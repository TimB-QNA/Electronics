#include "max1239.h"
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

Q_EXPORT_PLUGIN2(max1239, max1239);

max1239::max1239(QObject *parent) : QObject(parent){
  int i;
  nInputChans=12;
  aIn = new double[nInputChans];
  for (i=0;i<nInputChans;i++) aIn[i]=0;

  aInTimer = new QTimer();
  connect(aInTimer, SIGNAL(timeout()), this, SLOT(syncAnalogueIn()));
//  statIndicator = new QLabel("<html><font color='red'>MAX-1239</font></html>");

  file = open(settings.device.toAscii().data(), O_RDWR);
  if (file < 0) {
    printf("max1239 :: Failed to open device %s\n", settings.device.toAscii().data());
    return;
  }

// When you have opened the device, you must specify with what device
// address you want to communicate:

  if (ioctl(file, I2C_SLAVE, settings.address) < 0) {
    printf("Failed to access slave device 0x%2x\n", settings.address);
    exit(1);
  }
  
  char control[8];
  unsigned char wb;
/*
  control[7]='0'; // MSB indicate config byte
  control[6]='0'; // SCAN 1
  control[5]='0'; // SCAN 0
  control[4]='1'; // Channel Select 3
  control[3]='0'; // Channel Select 2
  control[2]='1'; // Channel Select 1
  control[1]='1'; // Channel Select 0
  control[0]='1'; // Single-Ended(1) or Differential(0)
  wb=0;
  for (i=7;i>=0;i--){
    if (control[i]){
      wb+=pow(2,i);
    }
  }
  write(file, &wb, 1);
*/
  control[7]='1'; // MSB indicate setup byte
  control[6]='1'; // SEL 2
  control[5]='0'; // SEL 1
  control[4]='1'; // SEL 0
  control[3]='0'; // CLK (1 External) - (0 Internal)
  control[2]='0'; // Bipolar(1) / Unipolar (0)
  control[1]='1'; // Reset (1 - ignore) (0 - reset setup byte)
  control[0]='0'; // Ignored

  wb=0;
  for (i=7;i>=0;i--){
    if (control[i]){
      wb+=pow(2,i);
    }
  }
//  write(file, &wb, 1);
//  close(file);

}

QObject* max1239::asQObject(){
  return this;  
}

QString max1239::pluginName(){
  return QString("max1239");
}

QString max1239::pluginDescription(){
  return QString("Interface for the max1239 ADC");
}

QString max1239::xmlRootTag(){
  return QString("max1239");
}

void max1239::readXML(QDomNode root){
  printf("max1239 :: Reading configuration\n");
  settings.readXML(root);
}

QStringList max1239::writeXML(){
  printf("max1239 :: Writing configuration\n");
  return settings.writeXML();
}

//QWidget* max1239::statusIndicator(){
//  return statIndicator;
//}

//QWidget* max1239::settingsPanel(){
//  return NULL; //settings.guiPanel;
//}

void max1239::storeSettings(){
  settings.storeGUIValues(); 
}

int max1239::inputChannels(){
  return nInputChans;
}

int max1239::outputChannels(){
  return 0;
}

void max1239::syncAnalogueIn(){
  // Read all channels on MAX1239 chip
  int i, j, k;
  unsigned char rb[24];

//  file = open(settings.device.toAscii().data(), O_RDWR);
//  if (file < 0) {
//    printf("max1239 :: Failed to open device %s\n", settings.device.toAscii().data());
//    return;
//  }

// When you have opened the device, you must specify with what device
// address you want to communicate:

//  if (ioctl(file, I2C_SLAVE, settings.address) < 0) {
//    printf("Failed to access slave device 0x%2x\n", settings.address);
//    exit(1);
//  }
/*
  char control[8];
  unsigned char wb;
  control[7]='0'; // MSB indicate config byte
  control[6]='0'; // SCAN 1
  control[5]='0'; // SCAN 0
  control[4]='1'; // Channel Select 3
  control[3]='0'; // Channel Select 2
  control[2]='1'; // Channel Select 1
  control[1]='1'; // Channel Select 0
  control[0]='1'; // Single-Ended(1) or Differential(0)
  wb=0;
  for (i=0;i<8;i++){
    if (control[i]){
      wb+=pow(2,i);
    }
  }
//  printf("Wrote %d Bytes\n", write(file, &wb, 1));
  */
  read(file, rb, 24);
//  rb[0]=i2c_smbus_read_byte(file);
//  rb[1]=i2c_smbus_read_byte(file);
  if (rb[0]<240){
    printf("ADC not connected\n");
    return;
  }


  for (k=0;k<12;k++){
    printf("Channel %i - ",k);
    for (j=0;j<2;j++){
      for (i=7;i>=0;i--){
        if ( (rb[2*k+j]&(int)pow(2,i) ) >0){
          printf("1 ");
        }else{
          printf("0 ");
        }
      }
      printf(" : ");
    }
    printf("\n");
  }
  
  bool adcValue[16];
  
  for (k=11;k<12;k++){
  int n=0;
  int value=0;    
  for (j=0;j<2;j++){
    for (i=7;i>=0;i--){
      if ( (rb[2*k+j]&(int)pow(2,i) ) >0){
        adcValue[n]=true;
      }else{
        adcValue[n]=false;
      }
      n++;
    }
  }

  for (i=4;i<16;i++){
    if (adcValue[i]){
      value+=pow(2,15-i);
//      printf("1 ");
    }else{
//      printf("0 ");
    }
  }
  printf(" - %i    ",value);
  }
  printf("\n");
}

double max1239::readAnalogueIn(int channel){
  if (channel>0 && channel<inputChannels()) return aIn[channel];
  return 0.0;
}

void max1239::startEventLoop(){
  aInTimer->setInterval(100);
  aInTimer->start();
}

// Digital stuff which is not relevant but must still be defined.
bool max1239::readDigitalIn(int channel){
  return false;
}
void max1239::presetDigitalOut(int channel, bool value){
}
void max1239::syncDigitalIn(){
}
void max1239::syncDigitalOut(){
}
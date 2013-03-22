#include "voltageReader.h"
#include <stdio.h>

#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>

/*!
 * This macro returns the number of elements in an array.
 * It is used when sending SPI data to reduce the likelihood
 * of reading or writing past the sent or received array.
 */
#define ARRAY_SIZE(array) sizeof(array)/sizeof(array[0])

/*!
 * The constructor initialises and starts the timer to handle data fetches.
 */
voltageReader::voltageReader(QObject *parent) : QObject(parent){
  fetch = new QTimer();
  fetch->setInterval(5000);
  connect(fetch, SIGNAL(timeout()), this, SLOT(readVoltage()));
  fetch->start();
}

/*!
 * This is a convenience function to read data from the currently configured ADC.
 */
void voltageReader::readVoltage(){
//  printf("Attempting to read voltage\n");
  readMAX146();
}

/*!
 * This is the driver for the MAX146. It uses the SPI bus to read from the chip,
 * and as such requires the "spi-bcm2708" module to be loaded.
 * Currently this code only reads channel 3. Refer to the MAX146 datasheet
 * for the correct control byte to send in order to read other channels. The chip-select
 * line is not driven by this code, and so relies on it being held low at all times.
 * This is fine for a single ADC, but not for a multiple setup. Any GPIO pin could be used as
 * a chip-select line. When the channel has been read, the data is passed back to the main event loop
 * using the "voltage" signal.
 */
void voltageReader::readMAX146(){
  int i, fd, ret, b;
  int value=0;
  static uint8_t mode = 0;
  static uint8_t bits = 8;
  static uint32_t speed = 200000;
  static uint16_t delay = 0;
  bool adcValue[16];
  uint8_t tx[]={0xdf,0x00,0x00};
  uint8_t rx[]={0x00,0x00,0x00};
  
  fd = open("/dev/spidev0.1", O_RDWR);
  if (fd<=0){
    printf("Cannot open device\n");
    return;
  }

  //spi mode
  ret = ioctl(fd, SPI_IOC_WR_MODE, &mode);
  if (ret == -1){
    printf("Can't set spi mode");
    return;
  }
  ret = ioctl(fd, SPI_IOC_RD_MODE, &mode);
  if (ret == -1){
    printf("Can't get spi mode");
    return;
  }

  // bits per word
  ret = ioctl(fd, SPI_IOC_WR_BITS_PER_WORD, &bits);
  if (ret == -1){
    printf("Can't set bits per word");
    return;
  }
  ret = ioctl(fd, SPI_IOC_RD_BITS_PER_WORD, &bits);
  if (ret == -1){
    printf("Can't set bits per word");
    return;
  }

  // max speed hz
  ret = ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
  if (ret == -1){
    printf("Can't set speed");
    return;
  }
  ret = ioctl(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed);
  if (ret == -1){
    printf("Can't get speed");
    return;
  }

  struct spi_ioc_transfer tr;
  tr.tx_buf = (unsigned long)tx;
  tr.rx_buf = (unsigned long)rx;
  tr.len = ARRAY_SIZE(tx);
  tr.delay_usecs = delay;
  tr.speed_hz = speed;
  tr.bits_per_word = bits;

  ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tr);
  if (ret < 1){
    printf("Can't send message");
    return;
  }

  int n=15;
  for (b=1;b<3;b++){
    for (i=7;i>=0;i--){
      if ( (rx[b]&(int)pow(2,i) ) >0){
        adcValue[n]=true;
      }else{
        adcValue[n]=false;
      }
      n--;
    }
  }

  for (i=0;i<12;i++){
    if (adcValue[i+3]){
      value+=pow(2,i);
    }
  }
//  printf("Value=%i\n",value);
  
  emit voltage(1, 3, 0.0022034495*value - 0.0001891943);
  
  close(fd);
}

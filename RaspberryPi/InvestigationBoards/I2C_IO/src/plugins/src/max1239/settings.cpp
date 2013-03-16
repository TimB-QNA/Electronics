// Sample Gauges main program
// QT4 - Experimental stage!!

#include <QtGui>
#include <QtXml>
#include <math.h>

#include "settings.h"

sampleSettings::sampleSettings(){
  /*
  QGridLayout *layout = new QGridLayout();

  hostLabel = new QLabel("Host");
  layout->addWidget(hostLabel,0,0);
  hostEdit = new QLineEdit();
  layout->addWidget(hostEdit,0,1);
  
  portLabel = new QLabel("Port");
  layout->addWidget(portLabel,1,0);
  portSpin = new QSpinBox();
  portSpin->setMinimum(1024);
  portSpin->setMaximum(100000);
  layout->addWidget(portSpin,1,1);

  reconnectLabel = new QLabel("Reconnect Rate (ms)");
  layout->addWidget(reconnectLabel,2,0);
  reconnectSpin = new QSpinBox();
  reconnectSpin->setMinimum(10);
  reconnectSpin->setMaximum(10000);
  layout->addWidget(reconnectSpin,2,1);

  connTimeoutLabel = new QLabel("Connection Timeout (ms)");
  layout->addWidget(connTimeoutLabel,3,0);
  connTimeoutSpin = new QSpinBox();
  connTimeoutSpin->setMinimum(10);
  connTimeoutSpin->setMaximum(10000);
  layout->addWidget(connTimeoutSpin,3,1);

  guiPanel = new QWidget();
  guiPanel->setLayout(layout);
*/
  device="/dev/i2c-0";
  address=0x35;
  /*
  host="localhost";
  port=4096;
  reconnectRate=5000;
  connectTimeout=500;
  autoReconnect=true;

  hostEdit->setText(host);
  portSpin->setValue(port);
  reconnectSpin->setValue(reconnectRate);
  connTimeoutSpin->setValue(connectTimeout);
  */
}

void sampleSettings::readXML(QDomNode root){
  QDomNode node;
  QDomElement element;
  
  node = root.firstChild();
  while (!node.isNull()){
    element=node.toElement();
    if (element.tagName().toLower()=="host") host=element.text();
    if (element.tagName().toLower()=="port") port=element.text().toInt();
    if (element.tagName().toLower()=="reconnectRate") reconnectRate=element.text().toInt();
    if (element.tagName().toLower()=="connectTimeout") connectTimeout=element.text().toInt();
    node=node.nextSibling();
  }
/*
  hostEdit->setText(host);
  portSpin->setValue(port);
  reconnectSpin->setValue(reconnectRate);
  connTimeoutSpin->setValue(connectTimeout);
  */
}

QStringList sampleSettings::writeXML(){
  int i;
  char line[4096];
  QStringList xml;
  xml.append("  <sample>");
  xml.append("    <host>"+host+"</host>");
  sprintf(line,"    <port>%i</port>", port); xml.append(line);
  sprintf(line,"    <reconnectRate>%i</reconnectRate>", reconnectRate); xml.append(line);
  sprintf(line,"    <connectTimeout>%i</connectTimeout>", connectTimeout); xml.append(line);
  xml.append("  </sample>");
  return xml;
}

void sampleSettings::storeGUIValues(){

}
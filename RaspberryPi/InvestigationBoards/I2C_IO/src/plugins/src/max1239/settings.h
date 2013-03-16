#ifndef sampleSettings_H
  #define sampleSettings_H

#include <QtGui>
#include <QtXml>

class sampleSettings
{
  public:
    sampleSettings();
    void readXML(QDomNode root);
    QStringList writeXML();    
    void storeGUIValues();

    QString device;
    int address;

    
    QString host;
    int port;
    int reconnectRate;
    int connectTimeout;
    int messageTimeout;
    bool autoReconnect;
    
//    QWidget *guiPanel;
    
  private:
//    QLabel *hostLabel;
//    QLabel *portLabel;
//    QLineEdit *hostEdit;
//    QSpinBox *portSpin;
//    QLabel *reconnectLabel;  
//    QSpinBox *reconnectSpin;
//    QLabel *connTimeoutLabel;
//    QSpinBox *connTimeoutSpin;
};

#endif


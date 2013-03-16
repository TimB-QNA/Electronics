#ifndef max1239_H
  #define max1239_H

#include <QObject>
#include <QtPlugin>
#include <QtNetwork>
#include "../../../pluginInterfaces.h"
#include "settings.h"

class max1239 : public QObject, public integratedCircuitInterface
{
  Q_OBJECT
  Q_INTERFACES(integratedCircuitInterface)
  
  public:
    max1239(QObject *parent=0);
    QObject* asQObject();
    QString pluginName();
    QString pluginDescription();
    QString xmlRootTag();
    void readXML(QDomNode root);
    QStringList writeXML();
//    QWidget* statusIndicator();
//    QWidget* settingsPanel();
    void storeSettings();

    int inputChannels();
    int outputChannels();
  
    // Analogue input elements
    double readAnalogueIn(int channel);
    
    // Digital IO elements
    bool readDigitalIn(int channel);
    void presetDigitalOut(int channel, bool value);
    
    // Event loop mode
    void startEventLoop();
    
  public slots:
    void syncDigitalIn();
    void syncDigitalOut();
    void syncAnalogueIn();
      
  signals:
    void pluginRunning();
    
  private:
    int file;
    int nInputChans;
    double *aIn;
    sampleSettings settings;
//    QLabel *statIndicator;
    QTimer *aInTimer;
};
#endif
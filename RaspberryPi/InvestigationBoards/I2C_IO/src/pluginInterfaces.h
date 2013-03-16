#ifndef PLUGININTERFACES_H
#define PLUGININTERFACES_H

#include <QtPlugin>
#include <QtXml>

class networkInterface
{
  public:  
    virtual QObject* asQObject() = 0;
    virtual void readXML(QDomNode root)=0;
    virtual QStringList writeXML()=0;
    virtual QString xmlRootTag()=0;
    virtual QString pluginName()=0;
    virtual QString pluginDescription()=0;

    // GUI elements
    virtual QWidget* statusIndicator()=0;
    virtual QWidget* settingsPanel()=0;
    virtual void storeSettings()=0;
     
  public slots:
    virtual void connectToPeer()=0;
    virtual void disconnectFromPeer()=0;
};

class integratedCircuitInterface
{
  public:
    virtual QObject* asQObject() = 0;
    virtual void readXML(QDomNode root)=0;
    virtual QStringList writeXML()=0;
    virtual QString xmlRootTag()=0;
    virtual QString pluginName()=0;
    virtual QString pluginDescription()=0;

    // GUI elements
//    virtual QWidget* statusIndicator()=0;
//    virtual QWidget* settingsPanel()=0;
    virtual void storeSettings()=0;

    virtual int inputChannels()=0;
    virtual int outputChannels()=0;
    
    // Digital I/O elements
    virtual bool readDigitalIn(int channel)=0;
    virtual void presetDigitalOut(int channel, bool value)=0;
    
    // Analogue input elements
    virtual double readAnalogueIn(int channel)=0;

    // Event loop mode
    virtual void startEventLoop()=0;

  public slots:
    // Digital I/O elements
    virtual void syncDigitalIn()=0;
    virtual void syncDigitalOut()=0;

    // Analogue input elements
    virtual void syncAnalogueIn()=0;
};

Q_DECLARE_INTERFACE(networkInterface, "AeroTelemetry.networkInterface/1.0")
Q_DECLARE_INTERFACE(integratedCircuitInterface, "Electronics.integratedCircuitInterface/1.0")
#endif
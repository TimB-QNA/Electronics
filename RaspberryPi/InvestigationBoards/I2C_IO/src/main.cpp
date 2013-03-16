// Sample Gauges main program
// QT4 - Experimental stage!!

#include <QCoreApplication>
#include "eventLoop.h"

void header();

// Network feed plugins...
QList<networkInterface*> network;
QList<integratedCircuitInterface*> chip;

int main(int argc, char * argv[]){
  int i;
  header();
  QCoreApplication app(argc,argv);

  printf("Loading plugins:\n");

  // Load plugins...
  networkInterface *netPlugin;
  integratedCircuitInterface *icPlugin;
  QDir pluginDir("plugins");
  QStringList pluginFiles;
  pluginDir.setNameFilters(QStringList(QString("*.so")));
  pluginFiles=pluginDir.entryList();
  for (i=0;i<pluginFiles.count();i++){
//    printf("Trying to load - %s\n",pluginFiles[i].toAscii().data());
    QPluginLoader loader(pluginDir.path()+"/"+pluginFiles[i]);
    netPlugin = qobject_cast<networkInterface *> (loader.instance());
    if (netPlugin){
      printf("%s\t-\t%s\n", netPlugin->pluginName().toAscii().data(), netPlugin->pluginDescription().toAscii().data());
      network.append(netPlugin);
    }else{
      icPlugin = qobject_cast<integratedCircuitInterface *> (loader.instance());
      if (icPlugin){
        printf("%s\t-\t%s\n", icPlugin->pluginName().toAscii().data(), icPlugin->pluginDescription().toAscii().data());
        chip.append(icPlugin);
      }else{
        printf("Failed to load plugin - %s\n",loader.errorString().toAscii().data());
      }
    }
  }
  
  eventLoop *window = new eventLoop;
  return app.exec();
}

void header(){
  printf("AeroTelemetry Ground Program\n");
  printf("\n");
  printf("  Version: %s\n", VERSION.toAscii().data());
  printf("   Author: Tim Brocklehurst - timb@engineering.selfip.org\n");
}

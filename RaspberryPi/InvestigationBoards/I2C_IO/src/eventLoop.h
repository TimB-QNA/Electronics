#ifndef mainWindow_H
  #define mainWindow_H

#include <QtGui>
#include "pluginInterfaces.h"

class eventLoop : public QObject
{
   Q_OBJECT

  public:
    eventLoop(QObject *parent=0);
    
  private:

  private slots:
    void loadSession();
};

#endif


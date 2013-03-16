// Sample Gauges main program
// QT4 - Experimental stage!!

#include <QtGui>
#include <QtXml>
#include <math.h>

#include "pluginInterfaces.h"
#include "eventLoop.h"

// extern QList<networkInterface*> network;
extern QList<integratedCircuitInterface*> chip;

eventLoop::eventLoop(QObject *parent) : QObject(parent) {
  int i;
  for (i=0;i<chip.count();i++){
    chip[i]->syncAnalogueIn();
    chip[i]->startEventLoop();
  }
}

void eventLoop::loadSession(){
/*
  int erl, erc, i, nNodes;
  QDomNode node, node2;
  QDomElement root, element, element2;
  QString errMsg, fileName;
  QFile file;

  fileName = QFileDialog::getOpenFileName(this, tr("Load Session"), ".", tr("Session Files (*.mdx)"));
  if (fileName.isEmpty()) return;

  file.setFileName(fileName);
  if (!file.open( QIODevice::ReadOnly )){
    printf("ModelDisplay :: Could not open XML file - %s\n",fileName.toAscii().data());
    return;
  }

  QDomDocument doc( "sessionFile" );
  if (!doc.setContent( &file, false, &errMsg, &erl, &erc)){
    printf("ModelDisplay :: Error at line %i, Column %i - %s\n", erl, erc,errMsg.toAscii().data());
    file.close();
    return;
  }
  file.close();

  root=doc.documentElement();
  if (root.tagName().toLower() != "modeldisplay"){
    printf("ModelDisplay :: This is not a ModelDisplay XML file\n");
    return;
  }

  QProgressDialog progress("Loading Session...", "Cancel", 0, root.childNodes().count(), this);
  progress.setWindowModality(Qt::WindowModal);

  nNodes=0;
  node=root.firstChild();
  while (!node.isNull()){
    progress.setValue(nNodes);
    element=node.toElement();
    if (element.tagName().toLower()=="settings"){
      if (element.attribute("ignore").toLower()!="false") sessionSettings->readXML(node);
    }
    node=node.nextSibling();
    nNodes++;
  }
*/
}

#include <QApplication>
#include <QtCore>
#include "pru.h"

int main(int argc, char *argv[])
{
  QApplication app(argc, argv);
  pru pru;
  pru.show();
  return app.exec();
}

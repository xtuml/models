#include <QApplication>
#include <QtCore>
#include "gpswatch.h"

int main(int argc, char *argv[])
{
  QApplication app(argc, argv);
  gpswatch gpswatch;
  gpswatch.show();
  return app.exec();
}

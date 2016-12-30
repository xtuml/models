#include <QApplication>
#include <QtCore>
#include "bmu.h"

int main(int argc, char *argv[])
{
  QApplication app(argc, argv);
  bmu bmu;
  bmu.show();
  return app.exec();
}

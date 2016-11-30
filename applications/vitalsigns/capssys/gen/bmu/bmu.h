#ifndef GPSWATCH_H
#define GPSWATCH_H

#include <QDialog>
#include <QToolButton>
#include <QtNetwork>
#include <QIcon>
#include <QGridLayout>
#include <QLCDNumber>
#include <QLabel>

QT_BEGIN_NAMESPACE
class QTcpServer;
class QNetworkSession;
QT_END_NAMESPACE

class bmu : public QDialog {
  Q_OBJECT

public:
  bmu(QWidget *parent = 0);

private slots:
  void sessionOpened();
  void initConnect();
  void StartStopButton();
  void ReadSocketData();

private:
  QTcpSocket *clientConnection;
  QToolButton quitButton, stopButton;
  QIcon stopIcon, quitIcon;
  QIcon stopPressedIcon;
  QTcpServer *tcpServer;
  QNetworkSession *networkSession;
  QGridLayout layout;
  QLabel SpO2;
  QLabel HR;
  QLabel systolic;
  QLabel diastolic;
};

#endif

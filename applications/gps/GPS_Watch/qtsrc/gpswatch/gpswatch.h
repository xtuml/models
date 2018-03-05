#ifndef GPSWATCH_H
#define GPSWATCH_H

#include <QDialog>
#include <QToolButton>
#include <QtNetwork>
#include <QIcon>
#include <QGridLayout>
#include <QLCDNumber>

QT_BEGIN_NAMESPACE
class QTcpServer;
class QNetworkSession;
QT_END_NAMESPACE

class gpswatch : public QDialog {
  Q_OBJECT

public:
  gpswatch(QWidget *parent = 0);

private slots:
  void sessionOpened();
  void initConnect();
  void StartStopButton();
  void TargetButton();
  void ResetButton();
  void LightButton();
  void ModeButton();
  void ReadSocketData();

private:
  QTcpSocket *clientConnection;
  QToolButton quitButton, stopButton, modeButton, targetButton, lightButton, resetButton;
  QIcon lightIcon, modeIcon, resetIcon, stopIcon, targetIcon, quitIcon;
  QIcon lightPressedIcon, modePressedIcon, resetPressedIcon, stopPressedIcon, targetPressedIcon;
  QTcpServer *tcpServer;
  QNetworkSession *networkSession;
  QGridLayout layout;
  QLCDNumber readout;
};

#endif

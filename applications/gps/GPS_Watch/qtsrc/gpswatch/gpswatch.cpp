#include <QtWidgets>
#include <QtNetwork>
#include <QLCDNumber>
#include <stdlib.h>
#include "gpswatch.h"

gpswatch::gpswatch(QWidget *parent) : QDialog(parent), tcpServer(0), networkSession(0) {
  // background image
  setStyleSheet("background-image: url(:/images/watch.png);");
  // LCD readout
  readout.setStyleSheet("background:transparent;");
  readout.setSegmentStyle(QLCDNumber::Flat);
  readout.setMinimumSize(200, 100);
  // button images
  QPixmap lightPixmap(":/images/light_hover.png");
  QPixmap lightPressedPixmap(":/images/light_pressed.png");
  QPixmap modePixmap(":/images/mode_hover.png");
  QPixmap modePressedPixmap(":/images/mode_pressed.png");
  QPixmap resetPixmap(":/images/lap_reset_hover.png");
  QPixmap resetPressedPixmap(":/images/lap_reset_pressed.png");
  QPixmap stopPixmap(":/images/start_stop_hover.png");
  QPixmap stopPressedPixmap(":/images/start_stop_pressed.png");
  QPixmap targetPixmap(":/images/display_hover.png");
  QPixmap targetPressedPixmap(":/images/display_pressed.png");
  // icons
  lightIcon.addPixmap(lightPixmap); lightPressedIcon.addPixmap(lightPressedPixmap);
  modeIcon.addPixmap(modePixmap); modePressedIcon.addPixmap(modePressedPixmap);
  resetIcon.addPixmap(resetPixmap); resetPressedIcon.addPixmap(resetPressedPixmap);
  stopIcon.addPixmap(stopPixmap); stopPressedIcon.addPixmap(stopPressedPixmap);
  targetIcon.addPixmap(targetPixmap); targetPressedIcon.addPixmap(targetPressedPixmap);
  // button definitions
  lightButton.setIcon(lightIcon);
  lightButton.setIconSize(lightPixmap.rect().size());
  lightButton.setStyleSheet("border:none;");
  modeButton.setIcon(modeIcon);
  modeButton.setIconSize(modePixmap.rect().size());
  modeButton.setStyleSheet("border:none;");
  resetButton.setIcon(resetIcon);
  resetButton.setIconSize(resetPixmap.rect().size());
  resetButton.setStyleSheet("border:none;");
  stopButton.setIcon(stopIcon);
  stopButton.setIconSize(stopPixmap.rect().size());
  stopButton.setStyleSheet("border:none;");
  targetButton.setIcon(targetIcon);
  targetButton.setIconSize(targetPixmap.rect().size());
  targetButton.setStyleSheet("border:none;");

  sessionOpened();

  // connect starting socket communication
  connect(tcpServer, SIGNAL(newConnection()), this, SLOT(initConnect()));

  layout.setColumnMinimumWidth(1,320);
  layout.addWidget(&lightButton, 0, 0);
  layout.addWidget(&targetButton, 0, 2);
  layout.addWidget(&readout, 1, 1, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.addWidget(&modeButton, 2, 0);
  layout.addWidget(&stopButton, 2, 1, Qt::AlignHCenter | Qt::AlignBottom);
  layout.addWidget(&resetButton, 2, 2);

  QVBoxLayout *mainLayout = new QVBoxLayout;
  mainLayout->addSpacing(170);
  mainLayout->addLayout(&layout);
  mainLayout->addSpacing(180);
  setLayout(mainLayout);

  readout.display( "00:00" );
  setWindowTitle(tr("GPS Watch"));
}

void gpswatch::sessionOpened()
{
  tcpServer = new QTcpServer(this);
  if (!tcpServer->listen(QHostAddress::Any,2003)) {
    QMessageBox::critical(this, tr("GPS Watch"), tr("Unable to start the server: %1.") .arg(tcpServer->errorString()));
    close();
    return;
  }
}

void gpswatch::initConnect()
{
  clientConnection = tcpServer->nextPendingConnection();
  connect(clientConnection, SIGNAL(readyRead()), this, SLOT(ReadSocketData()));
  connect(clientConnection, SIGNAL(disconnected()), clientConnection, SLOT(deleteLater()));
  // connect clicks and socket communiction to routines
  connect(&lightButton, SIGNAL(clicked()), this, SLOT(LightButton()));
  connect(&modeButton, SIGNAL(clicked()), this, SLOT(ModeButton()));
  connect(&resetButton, SIGNAL(clicked()), this, SLOT(ResetButton()));
  connect(&stopButton, SIGNAL(clicked()), this, SLOT(StartStopButton()));
  connect(&targetButton, SIGNAL(clicked()), this, SLOT(TargetButton()));
}

void gpswatch::LightButton()
{ 
  lightButton.setIcon(lightPressedIcon);
  modeButton.setIcon(modeIcon);
  resetButton.setIcon(resetIcon);
  stopButton.setIcon(stopIcon);
  targetButton.setIcon(targetIcon);
  clientConnection->write("3\n");
}

void gpswatch::ModeButton()
{
  lightButton.setIcon(lightIcon);
  modeButton.setIcon(modePressedIcon);
  resetButton.setIcon(resetIcon);
  stopButton.setIcon(stopIcon);
  targetButton.setIcon(targetIcon);
  clientConnection->write("4\n");
}

void gpswatch::ResetButton()
{ 
  lightButton.setIcon(lightIcon);
  modeButton.setIcon(modeIcon);
  resetButton.setIcon(resetPressedIcon);
  stopButton.setIcon(stopIcon);
  targetButton.setIcon(targetIcon);
  clientConnection->write("2\n");
}

void gpswatch::StartStopButton()
{
  lightButton.setIcon(lightIcon);
  modeButton.setIcon(modeIcon);
  resetButton.setIcon(resetIcon);
  stopButton.setIcon(stopPressedIcon);
  targetButton.setIcon(targetIcon);
  clientConnection->write("0\n");
}

void gpswatch::TargetButton()
{
  lightButton.setIcon(lightIcon);
  modeButton.setIcon(modeIcon);
  resetButton.setIcon(resetIcon);
  stopButton.setIcon(stopIcon);
  targetButton.setIcon(targetPressedIcon);
  clientConnection->write("1\n");
}

void gpswatch::ReadSocketData()
{ 
  char * token, * str, * z, s[3][80];
  int i = 0;
  QByteArray ba = clientConnection->readLine();
  str = (char *) ba.data();
  for ( token = strtok_r(str, ",", &z); token; token = strtok_r(NULL, ",", &z) ) {
    strcpy( s[i++], token );
  }
  i = atoi( s[0] );
  switch ( i ) {
    case 0:
      break;
    case 1: {
      i = atoi( s[1] );
      int min = (i % 3600) / 60;
      int sec = i % 60;
      i = min / 10;
      s[1][0] = i + '0';
      i = min % 10;
      s[1][1] = i + '0';
      s[1][2] = ':';
      i = sec / 10;
      s[1][3] = i + '0';
      i = sec % 10;
      s[1][4] = i + '0';
      s[1][5] = 0;
      readout.display( s[1] );
      break;
    }
    case 2:
      break;
    case 3:
      break;
    default:
      printf( "default %d\n", i );
  }
}

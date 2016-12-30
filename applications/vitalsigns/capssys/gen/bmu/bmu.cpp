#include <QtWidgets>
#include <QtNetwork>
#include <QLCDNumber>
#include <stdlib.h>
#include "bmu.h"

bmu::bmu(QWidget *parent) : QDialog(parent), tcpServer(0), networkSession(0) {
  // background image
  setStyleSheet("background-image: url(:/images/bmu.png);");
  // readouts
  SpO2.setStyleSheet("background:transparent; font:bold 36px; color: darkblue;");
  SpO2.setMinimumSize(100, 80);
  HR.setStyleSheet("background:transparent; font:bold 36px; color: darkblue;");
  HR.setMinimumSize(100, 80);
  systolic.setStyleSheet("background:transparent; font:bold 24px; color: darkblue;");
  systolic.setMinimumSize(60, 40);
  // button images
  QPixmap stopPixmap(":/images/end_case.png");
  QPixmap stopPressedPixmap(":/images/end_case_pressed.png");
  // icons
  stopIcon.addPixmap(stopPixmap); stopPressedIcon.addPixmap(stopPressedPixmap);
  // button definitions
  stopButton.setIcon(stopIcon);
  stopButton.setIconSize(stopPixmap.rect().size());
  stopButton.setStyleSheet("border:none;");

  sessionOpened();

  // connect starting socket communication
  connect(tcpServer, SIGNAL(newConnection()), this, SLOT(initConnect()));

  layout.setColumnMinimumWidth(0,54);
  layout.addWidget(&SpO2, 0, 1, Qt::AlignLeft | Qt::AlignVCenter);
  layout.setColumnMinimumWidth(2,24);
  layout.addWidget(&HR, 0, 3, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.setColumnMinimumWidth(4,24);
  layout.addWidget(&systolic, 0, 5, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.setVerticalSpacing(64);
  layout.addWidget(&stopButton, 2, 5, Qt::AlignLeft | Qt::AlignLeft);

  QVBoxLayout *mainLayout = new QVBoxLayout;
  mainLayout->addSpacing(24);
  mainLayout->addLayout(&layout);
  mainLayout->addSpacing(40);
  setLayout(mainLayout);

  SpO2.setText( "" );
  HR.setText( "" );
  systolic.setText( "" );
  setWindowTitle(tr("BMU"));
}

void bmu::sessionOpened()
{
  tcpServer = new QTcpServer(this);
  if (!tcpServer->listen(QHostAddress::Any,2003)) {
    QMessageBox::critical(this, tr("BMU"), tr("Unable to start the server: %1.") .arg(tcpServer->errorString()));
    close();
    return;
  }
}

void bmu::initConnect()
{
  clientConnection = tcpServer->nextPendingConnection();
  connect(clientConnection, SIGNAL(readyRead()), this, SLOT(ReadSocketData()));
  connect(clientConnection, SIGNAL(disconnected()), clientConnection, SLOT(deleteLater()));
  // connect clicks and socket communiction to routines
  connect(&stopButton, SIGNAL(clicked()), this, SLOT(StartStopButton()));
}

void bmu::StartStopButton()
{
  stopButton.setIcon(stopPressedIcon);
  clientConnection->write("0\n");
  setStyleSheet("background-image: url(:/images/bmu_idle.png);");
}

void bmu::ReadSocketData()
{ 
  int i, count = 0;
  char line[8][80], s[3][80], * str = 0, * z, * token;
  static char dbuf[80];
  // Read in the lines from the socket.
  do {
    str = 0;
    QByteArray ba = clientConnection->readLine();
    if ( ! ba.isNull() && ! ba.isEmpty() ) {
      str = (char *) ba.data();
      strcpy( line[count], str );
    }
  } while ( str && ( count++ < 8 ) );
  // Now loop through and update the UI.
  for ( i = 0; i < count; i++ ) {
    int j = 0;
    str = line[ i ];
    // Split line into two fields (name and value).
    for ( token = strtok_r(str, ",", &z); token; token = strtok_r(NULL, ",", &z) ) {
      strcpy( s[j++], token );
    }
    if ( strncmp( s[0], "O2saturation", 16 ) == 0 ) {
      SpO2.setNum( atoi( s[1] ) );
    } else if ( strncmp( s[0], "ecg", 16 ) == 0 ) {
      HR.setNum( atoi( s[1] ) );
    } else if ( strncmp( s[0], "systolic", 16 ) == 0 ) {
      systolic.setText( strcat( s[1], dbuf ) );
    } else if ( strncmp( s[0], "diastolic", 16 ) == 0 ) {
      strcpy( dbuf, s[1] );
      // CDS - Should figure out a better way....
      dbuf[2]=0;  // Assume 2 digits and knock off newline.
    }
  }
}

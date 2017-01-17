#include <QtWidgets>
#include <QtNetwork>
#include <QLCDNumber>
#include <stdlib.h>
#include "pru.h"

pru::pru(QWidget *parent) : QDialog(parent), tcpServer(0), networkSession(0) {
  // background image
  setStyleSheet("background-image: url(:/images/pru.png);");
  // readouts
  arm.setStyleSheet("background:transparent; font:bold 28px; color: darkblue;");
  arm.setMinimumSize(36, 36);
  SpO2.setStyleSheet("background:transparent; font:bold 28px; color: darkblue;");
  SpO2.setMinimumSize(36, 36);
  HR.setStyleSheet("background:transparent; font:bold 28px; color: darkblue;");
  HR.setMinimumSize(36, 36);
  systolic.setStyleSheet("background:transparent; font:bold 16px; color: darkblue;");
  systolic.setMinimumSize(36, 36);
  respiration.setStyleSheet("background:transparent; font:bold 28px; color: darkblue;");
  respiration.setMinimumSize(36, 36);
  etCO2.setStyleSheet("background:transparent; font:bold 28px; color: darkblue;");
  etCO2.setMinimumSize(36, 36);
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

  layout.setColumnMinimumWidth(0,420);
  layout.addWidget(&respiration, 0, 2, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.addWidget(&etCO2, 0, 4, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.addWidget(&SpO2, 1, 3, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.setVerticalSpacing(60);
  layout.addWidget(&HR, 3, 2, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.addWidget(&systolic, 3, 4, Qt::AlignLeft | Qt::AlignLeft);
  layout.addWidget(&arm, 4, 3, Qt::AlignHCenter | Qt::AlignVCenter);
  layout.setRowMinimumHeight(5,76);
  layout.addWidget(&stopButton, 6, 4, Qt::AlignLeft | Qt::AlignLeft);
  layout.setColumnMinimumWidth(5,232);

  QVBoxLayout *mainLayout = new QVBoxLayout;
  mainLayout->addSpacing(48);
  mainLayout->addLayout(&layout);
  mainLayout->addSpacing(28);
  setLayout(mainLayout);

  respiration.setText( "" );
  etCO2.setText( "" );
  SpO2.setText( "" );
  HR.setText( "" );
  systolic.setText( "" );
  arm.setText( "" );
  setWindowTitle(tr("PRU"));
}

void pru::sessionOpened()
{
  tcpServer = new QTcpServer(this);
  if (!tcpServer->listen(QHostAddress::Any,2004)) {
    QMessageBox::critical(this, tr("PRU"), tr("Unable to start the server: %1.") .arg(tcpServer->errorString()));
    close();
    return;
  }
}

void pru::initConnect()
{
  clientConnection = tcpServer->nextPendingConnection();
  connect(clientConnection, SIGNAL(readyRead()), this, SLOT(ReadSocketData()));
  connect(clientConnection, SIGNAL(disconnected()), clientConnection, SLOT(deleteLater()));
  // connect clicks and socket communiction to routines
  connect(&stopButton, SIGNAL(clicked()), this, SLOT(StartStopButton()));
}

void pru::StartStopButton()
{
  stopButton.setIcon(stopPressedIcon);
  clientConnection->write("0\n");
}

void pru::ReadSocketData()
{ 
  int i, count = 0;
  char line[16][80], s[3][80], * str = 0, * z, * token;
  static char dbuf[80];
  // Read in the lines from the socket.
  do {
    str = 0;
    QByteArray ba = clientConnection->readLine();
    if ( ! ba.isNull() && ! ba.isEmpty() ) {
      str = (char *) ba.data();
      strcpy( line[count], str );
    }
  } while ( str && ( count++ < 16 ) );
  // Now loop through and update the UI.
  for ( i = 0; i < count; i++ ) {
    int j = 0;
    str = line[ i ];
    // Split line into two fields (name and value).
    for ( token = strtok_r(str, ",", &z); token; token = strtok_r(NULL, ",", &z) ) {
      strcpy( s[j++], token );
    }
    if ( strncmp( s[0], "ARM", 16 ) == 0 ) {
      arm.setNum( atoi( s[1] ) );
    } else if ( strncmp( s[0], "etCO2", 16 ) == 0 ) {
      etCO2.setNum( atoi( s[1] ) );
    } else if ( strncmp( s[0], "respiration", 16 ) == 0 ) {
      respiration.setNum( atoi( s[1] ) );
    } else if ( strncmp( s[0], "O2saturation", 16 ) == 0 ) {
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

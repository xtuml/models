QT += network widgets

HEADERS       = gpswatch.h
SOURCES       = gpswatch.cpp \
                main.cpp
RESOURCES += images.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/gpswatch
INSTALLS += target

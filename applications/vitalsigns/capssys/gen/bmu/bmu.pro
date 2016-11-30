QT += network widgets

HEADERS       = bmu.h
SOURCES       = bmu.cpp \
                main.cpp
RESOURCES += images.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/bmu
INSTALLS += target

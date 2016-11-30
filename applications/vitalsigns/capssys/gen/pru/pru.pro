QT += network widgets

HEADERS       = pru.h
SOURCES       = pru.cpp \
                main.cpp
RESOURCES += images.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/pru
INSTALLS += target

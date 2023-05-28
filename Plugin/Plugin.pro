TEMPLATE = lib
QT += quick
TARGET = Plugin
DESTDIR = $$OUT_PWD/../Delivery/Plugin
RESOURCES += \
            DataHMI.qrc
SOURCES += \
         calculate.cpp
HEADERS += \
        calculate.h
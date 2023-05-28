TEMPLATE = app
QT += quick
#define the name of the executable
TARGET = SamplePlugin
#Position the Executable
DESTDIR = $$OUT_PWD/../Delivery
#Library requirements
LIBS += -L$${OUT_PWD}/../Delivery/Plugin -lPlugin
INCLUDEPATH+=$$PWD/../Plugin
SOURCES+= main.cpp \
          
HEADERS+= Src/Param.h
RESOURCES+= \
          main.qml

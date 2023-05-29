#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <calculate.h>
#include <QQmlContext>
#include "Src/Param.h"
int main(int argc, char** argv){
    QGuiApplication app(argc,argv);
    QQmlApplicationEngine engine;
    // This import path will allow the import of module
    // A module has to be inside it's module name
    // For example: if we want to import module Utils
    // and the "addImportPath" is already set
    // Then the qml file and qmldir are needed to be 
    // import/Utils
    engine.addImportPath(":/imports");
    Param param; 
    printInfor();
    engine.rootContext()->setContextProperty("APP_ENGINE",QVariant::fromValue(&param));
    engine.load(QUrl("qrc:/main.qml"));
    return app.exec();
}
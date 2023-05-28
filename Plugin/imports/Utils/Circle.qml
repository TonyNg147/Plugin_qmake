import QtQuick
Rectangle{
    width: 50
    height: 50
    radius: 15
    color: APP_ENGINE.isDriving ? "red" : "yellow"
}

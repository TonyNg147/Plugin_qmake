import QtQuick
Rectangle{
    width: 300
    height: 300
    color: "blue"
    Text{
        anchors.centerIn: parent
        text: "Button"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            console.log("Click herere: ",APP_ENGINE.isDriving)
            APP_ENGINE.isDriving = !APP_ENGINE.isDriving
        }
    }
}
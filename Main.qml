import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 1000
    height: 700
    color: "blue"
    title: "Lyra"

    header: MenuBar {
        Menu {
            title: qsTr("&File")
            Action {
                text: qsTr("&Open...")
                onTriggered: console.log("Open action triggered")
            }
            MenuSeparator { }
            Action {
                text: qsTr("&Exit")
                onTriggered: Qt.quit()
            }
        }
    }


    Text {
        anchors.centerIn: parent
        text: qsTr("Lyra")
        font.pixelSize: 48
    }

    Button {
        anchors.centerIn: parent
        text: "click me!"
        onClicked: console.log("fuck you!!")
    }
}

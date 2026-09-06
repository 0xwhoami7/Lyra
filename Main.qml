import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ApplicationWindow {
    id: root

    visible: true
    width: 1000
    height: 700
    minimumWidth: 700
    minimumHeight: 500

    color: "transparent"
    title: "Lyra"

    property bool isPlaying: false

    header: MenuBar {
        Menu {
            title: qsTr("&Options")

            Action {
                text: qsTr("&Album")
                onTriggered: console.log("Open album")
            }

            MenuSeparator {}

            Action {
                text: qsTr("&Music")
                onTriggered: console.log("Open music")
            }

            MenuSeparator {}

            Action {
                text: qsTr("&Exit")
                onTriggered: Qt.quit()
            }
        }
    }

    // ─────────────────────────
    // Main content
    // ─────────────────────────

    ColumnLayout {
        anchors.centerIn: parent
        Label {
            text: "Now Playing"
            font.pixelSize: 28
            font.bold: true
            Layout.alignment: Qt.AlignHCenter
        }

        Image {
            id: artist

            Layout.preferredWidth: Math.min(parent.width * 0.85, parent.height * 0.95, 320)

            Layout.preferredHeight: Layout.preferredWidth

            Layout.alignment: Qt.AlignHCenter

            source: "https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79"

            fillMode: Image.PreserveAspectCrop
            asynchronous: true
            cache: true

            layer.enabled: true
        }

        Label {
            text: "Test Song"
            font.pixelSize: 22
            font.bold: true

            Layout.alignment: Qt.AlignHCenter
        }

        Label {
            text: "Artist"
            font.pixelSize: 15
            opacity: 0.6

            Layout.alignment: Qt.AlignHCenter
        }

        Item {
            Layout.fillHeight: true
        }
    }

    // ─────────────────────────
    // Player bar
    // ─────────────────────────

    Rectangle {
        id: playerBar

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        height: 80

        color: "transparent"

        RowLayout {
            anchors.fill: parent
            anchors.margins: 16

            spacing: 16

            ColumnLayout {
                Layout.fillWidth: true

                spacing: 2
            }

            Button {
                text: "⏮"
            }

            Button {
                text: root.isPlaying ? "⏸" : "▶"

                onClicked: {
                    root.isPlaying = !root.isPlaying;

                    if (root.isPlaying)
                        player.play();
                    else
                        player.pause();
                }
            }

            Button {
                text: "⏭"
            }
            Item {
                Layout.fillWidth: true
            }
        }
    }
}

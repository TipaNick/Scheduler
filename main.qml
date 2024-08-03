import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: root

    width: 1366
    height: 768
    visible: true
    title: qsTr("Day Scheduler")

    Grid {
        columns: 2
        rows: 1

        Rectangle {
            height: root.height
            width: root.width * 0.2

            Rectangle {
                id: header

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                height: parent.height * 0.1

                Text {
                    text: qsTr("Day Scheduler")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: root.width / 70
                    font.bold: true
                }
            }

            Rectangle {
                id: menuNav

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: header.bottom
                anchors.topMargin: 10
                height: parent.height * 0.3

                MenuButton {
                    id: mainPage

                    header: qsTr("Главная")
                    fontSize: root.width / 70
                    buttonHeight: parent.height / 4
                }

                MenuButton {
                    id: schedulePage

                    header: qsTr("Расписание")
                    fontSize: root.width / 70
                    buttonHeight: parent.height / 4
                    anchorsParent: mainPage
                }

                MenuButton {
                    id: taskPage

                    header: qsTr("Задачи")
                    fontSize: root.width / 70
                    buttonHeight: parent.height / 4
                    anchorsParent: schedulePage
                }
            }

            Rectangle {
                id: settings

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                height: parent.height * 0.08

                MenuButton {
                    id: settingsPage
                    header: qsTr("Настройки")
                    fontSize: root.width / 70
                    buttonHeight: parent.height
                }
            }

        }

        Rectangle {
            height: root.height
            width: root.width * 0.8
            color: "#16a085"
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

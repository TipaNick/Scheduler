import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: root

    property string mainColor: "#4870b7"
    property string secondaryColor: "#ffffff"
    property string borderColor: "#e0e0e0"
    property string pickColor: "#e6f0fc"
    property int fontSize: root.width / 70

    width: 1366
    height: 768
    minimumWidth: 1280
    minimumHeight: 720
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
                height: parent.height * 0.08

                Text {
                    text: qsTr("Day Scheduler")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: root.fontSize
                    font.bold: true
                }
            }

            Rectangle {
                id: menuNav

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: header.bottom
                height: parent.height - header.height

                ColumnLayout {
                    height: parent.height
                    width: parent.width

                    SDMenuButton {
                        id: mainPage

                        header: qsTr("Главная")
                        fontSize: root.fontSize
                        buttonHeight: parent.height / 12
                        backgroundColor: (pageView.currentIndex === 0) ? root.pickColor : "#ffffff"
                        onClicked: pageView.currentIndex = 0
                    }

                    SDMenuButton {
                        id: schedulePage

                        header: qsTr("Расписание")
                        fontSize: root.fontSize
                        buttonHeight: parent.height / 12
                        backgroundColor: (pageView.currentIndex === 1) ? root.pickColor : "#ffffff"
                        onClicked: pageView.currentIndex = 1

                    }

                    SDMenuButton {
                        id: taskPage

                        header: qsTr("Задачи")
                        fontSize: root.fontSize
                        buttonHeight: parent.height / 12
                        backgroundColor: (pageView.currentIndex === 2) ? root.pickColor : "#ffffff"
                        onClicked: pageView.currentIndex = 2
                    }

                    Item {
                        Layout.fillHeight: true
                    }

                    SDMenuButton {
                        id: settingsPage

                        header: qsTr("Настройки")
                        fontSize: root.fontSize
                        buttonHeight: parent.height / 12
                    }
                }
            }
        }

        Rectangle {
            height: root.height
            width: root.width * 0.8

            SwipeView {
                id: pageView

                currentIndex: 2
                anchors.fill: parent
                orientation: Qt.Vertical
                interactive: false

                SDMain {

                }

                SDSchedule {

                }

                SDTask {

                }
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/

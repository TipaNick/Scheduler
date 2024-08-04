import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: root

    property string mainColor: "#4870b7"
    property string secondaryColor: "#ffffff"
    property string borderColor: "#e0e0e0"
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

                    MenuButton {
                        id: mainPage

                        header: qsTr("Главная")
                        fontSize: root.fontSize
                        buttonHeight: parent.height / 12
                    }

                    MenuButton {
                        id: schedulePage

                        header: qsTr("Расписание")
                        fontSize: root.fontSize
                        buttonHeight: parent.height / 12
                    }

                    MenuButton {
                        id: taskPage

                        header: qsTr("Задачи")
                        fontSize: root.fontSize
                        buttonHeight: parent.height / 12
                    }

                    Item {
                        Layout.fillHeight: true
                    }

                    MenuButton {
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

            ColumnLayout {
                width: parent.width
                height: parent.height
                spacing: 0

                Rectangle {
                    id: daysListPanel

                    Layout.preferredHeight: parent.height * 0.08
                    Layout.preferredWidth: parent.width
                    color: root.mainColor

                    RowLayout {
                        width: parent.width
                        height: parent.height

//                        ListModel {
//                            id: daysList

//                            ListElement {
//                                name:"ПН, ВТ"
//                            }
//                        }

//                        ListView {
//                            anchors.fill: parent

//                            model: daysList

//                            delegate: Rectangle {
//                                height: daysListPanel.height
//                                width: textHeader.width
//                                border.color: black
//                                border.width: 1

//                                Text {
//                                    id: textHeader

//                                    text: name
//                                }
//                            }
//                        }

                        Rectangle {
                                                        height: daysListPanel.height
                                                        width: textHeader2.width
                                                        border.color: black
                                                        border.width: 1

                                                        Text {
                                                            id: textHeader2

                                                            text: "name"
                                                        }
                                                    }

                        Text {
                            text:"1"
                        }
                        Button {
                            text:"2"
                        }
                        Item {
                            Layout.fillWidth: true
                        }
                    }
                }

                Rectangle {
                    Layout.preferredHeight: parent.height * 0.08
                    Layout.preferredWidth: parent.width
                    color: root.secondaryColor
                    border.color: root.borderColor
                    border.width: 1
                }

                Rectangle {
                    Layout.preferredHeight: parent.height * 0.08
                    Layout.preferredWidth: parent.width
                    color: root.secondaryColor
                    border.color: root.borderColor
                    border.width: 1

                    RowLayout {
                        width: parent.width
                        height: parent.height
                        spacing: 0

                        Item {
                            Layout.fillWidth: true
                        }

                        Text {
                            text: "#"
                            horizontalAlignment: Text.AlignHCenter
                            Layout.preferredWidth: parent.width * 0.05
                        }

                        Text {
                            text: qsTr("Название активности")
                            anchors.verticalCenter: parent.verticalCenter
                            Layout.preferredWidth: parent.width * 0.22
                        }

                        Text {
                            text: "Категория"
                            anchors.verticalCenter: parent.verticalCenter
                            Layout.preferredWidth: parent.width * 0.22
                        }

                        Text {
                            text: "Тип"
                            anchors.verticalCenter: parent.verticalCenter
                            Layout.preferredWidth: parent.width * 0.22
                        }

                        Text {
                            text: "Длительность"
                            anchors.verticalCenter: parent.verticalCenter
                            Layout.preferredWidth: parent.width * 0.17
                        }

                        Item {
                           Layout.preferredWidth: parent.width * 0.05
                        }

                    }
                }

                Rectangle {
                    id: scheduleTaskList

                    Layout.fillHeight: true
                    Layout.preferredWidth: parent.width
                    border.color: root.borderColor
                    border.width: 1

                    ListModel {
                        id: scheduleTaskModel

                        ListElement {
                            time: "10:00"
                            name: "Name"
                            category: [
                                ListElement {name:"Category 1"},
                                ListElement {name:"Category 2"},
                                ListElement {name:"Category 3"}
                            ]
                            tip: [
                                ListElement {name:"Tip 1"},
                                ListElement {name:"Tip 2"},
                                ListElement {name:"Tip 3"}
                            ]
                            duration: "1 ч. 30 мин."
                        }

                        ListElement {
                            time: "10:00"
                            name: "Name"
                            category: [
                                ListElement {name:"Category 1"},
                                ListElement {name:"Category 2"},
                                ListElement {name:"Category 3"}
                            ]
                            tip: [
                                ListElement {name:"Tip 1"},
                                ListElement {name:"Tip 2"},
                                ListElement {name:"Tip 3"}
                            ]
                            duration: "1 ч. 30 мин."
                        }

                        ListElement {
                            time: "10:00"
                            name: "Name"
                            category: [
                                ListElement {name:"Category 1"},
                                ListElement {name:"Category 2"},
                                ListElement {name:"Category 3"}
                            ]
                            tip: [
                                ListElement {name:"Tip 1"},
                                ListElement {name:"Tip 2"},
                                ListElement {name:"Tip 3"}
                            ]
                            duration: "1 ч. 30 мин."
                        }
                    }

                    ListView {
                        id: scheduleTaskView

                        anchors.fill: parent
                        model: scheduleTaskModel
                        spacing: 0

                        delegate: Rectangle {
                            id: dragScheduleRect

                            width: scheduleTaskView.width
                            height: 50
                            border.color: root.borderColor

                            RowLayout {
                                width: parent.width
                                height: parent.height
                                spacing: 0

                                Item {
                                    Layout.fillWidth: true
                                }

                                Text {
                                    text: time
                                    horizontalAlignment: Text.AlignHCenter
                                    Layout.preferredWidth: parent.width * 0.05
                                }

                                Text {
                                    text: name
                                    anchors.verticalCenter: dragScheduleRect.verticalCenter
                                    Layout.preferredWidth: parent.width * 0.22
                                }

                                Rectangle {
                                    Layout.preferredHeight: parent.height - 2
                                    Layout.preferredWidth: parent.width * 0.22

                                    ComboBox {
                                        anchors.verticalCenter: parent.verticalCenter
                                        model: category
                                    }
                                }

                                Rectangle {
                                    Layout.preferredHeight: parent.height - 2
                                    Layout.preferredWidth: parent.width * 0.22

                                    ComboBox {
                                        anchors.verticalCenter: parent.verticalCenter
                                        model: tip
                                    }
                                }

                                Text {
                                    text: duration
                                    anchors.verticalCenter: dragScheduleRect.verticalCenter
                                    Layout.preferredWidth: parent.width * 0.17
                                }

                                Button {
                                    text: "X"
                                    Layout.preferredWidth: parent.width * 0.05
                                    background: Rectangle {

                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}
}
##^##*/

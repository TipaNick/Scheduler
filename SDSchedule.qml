import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root

    property string mainColor: "#4870b7"
    property string secondaryColor: "#ffffff"
    property string borderColor: "#e0e0e0"

    ColumnLayout {
        spacing: 0
        width: parent.width
        height: parent.height

        Rectangle {
            id: daysListPanel

            Layout.preferredHeight: parent.height * 0.08
            Layout.preferredWidth: parent.width
            color: root.mainColor

            ListModel {
                id: daysList

                ListElement {
                    name:"ПН, ВТ"
                    checked: true
                }

                ListElement {
                    name:"ПН, ВТ, СР, ЧТ"
                    checked: false
                }
            }

            ListView {
                anchors.fill: parent
                anchors.leftMargin: 10
                orientation: Qt.Horizontal
                height: parent.height
                spacing: 20

                model: daysList

                delegate: Rectangle {
                    id: dayInList

                    height: parent.height
                    width: textWidth.width + 20
                    color: root.mainColor

                    Text {
                        id: textWidth

                        color: "#ffffff"
                        anchors.centerIn: parent
                        text: name
                    }

                    Rectangle {
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        height: 3
                        color: checked ? "#ffffff" : root.mainColor
                    }
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: parent.height * 0.08
            Layout.preferredWidth: parent.width
            color: root.secondaryColor
            border.color: root.borderColor
            border.width: 1

            RowLayout {
                anchors.centerIn: parent
                width: parent.width - 60
                height: parent.height

                Text {
                    text: "Start"
                }

                Text {
                    text: "Finish"
                }

                Item {
                    Layout.fillWidth: true
                }

                Rectangle {
                    Layout.preferredWidth: parent.width * 0.22
                    Layout.preferredHeight: parent.height / 2
                    border.color: root.borderColor
                    border.width: 1

                    RowLayout {
                        anchors.fill: parent
                        anchors.leftMargin: 5
                        anchors.rightMargin: 5

                        Button {
                            text: "ПН"
                            Layout.preferredHeight: parent.height - 2
                            anchors.verticalCenter: parent.verticalCenter
                            background: Rectangle {
                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.left: parent.left
                                    height: 1
                                    color: root.mainColor
                                }
                            }
                        }

                        Button {
                            text: "ВТ"
                            Layout.preferredHeight: parent.height - 2
                            anchors.verticalCenter: parent.verticalCenter
                            background: Rectangle {
                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.left: parent.left
                                    height: 1
                                    color: root.mainColor
                                }
                            }
                        }

                        Button {
                            text: "СР"
                            Layout.preferredHeight: parent.height - 2
                            anchors.verticalCenter: parent.verticalCenter
                            background: Rectangle {
                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.left: parent.left
                                    height: 1
                                    color: root.borderColor
                                }
                            }
                        }

                        Button {
                            text: "ЧТ"
                            Layout.preferredHeight: parent.height - 2
                            anchors.verticalCenter: parent.verticalCenter
                            background: Rectangle {
                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.left: parent.left
                                    height: 1
                                    color: root.borderColor
                                }
                            }
                        }
                        Button {
                            text: "ПТ"
                            Layout.preferredHeight: parent.height - 2
                            anchors.verticalCenter: parent.verticalCenter
                            background: Rectangle {
                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.left: parent.left
                                    height: 1
                                    color: root.borderColor
                                }
                            }
                        }

                        Button {
                            text: "СБ"
                            Layout.preferredHeight: parent.height - 2
                            anchors.verticalCenter: parent.verticalCenter
                            background: Rectangle {
                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.left: parent.left
                                    height: 1
                                    color: root.borderColor
                                }
                            }
                        }

                        Button {
                            text: "ВС"
                            Layout.preferredHeight: parent.height - 2
                            anchors.verticalCenter: parent.verticalCenter
                            background: Rectangle {
                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.left: parent.left
                                    height: 1
                                    color: root.borderColor
                                }
                            }
                        }
                    }
                }

                Item {
                    Layout.fillWidth: true
                }

                Rectangle {
                    Layout.preferredHeight: parent.height / 2
                    Layout.preferredWidth: addActiveHeader.width

                    Text {
                        id: addActiveHeader

                        text: qsTr("Добавить активность")
                        anchors.verticalCenter: parent.verticalCenter
                        leftPadding: 20
                        rightPadding: 20
                    }
                }
            }
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
                     text: "Название активности"
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
             border.color: "#e0e0e0"
             border.width: 1

             ListModel {
                 id: scheduleTaskModel

                 ListElement {
                     time: "10:00"
                     name: "Name 1"
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
                     name: "Name 2"
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
                     name: "Name 3"
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

                     property string _index: index

                     anchors.left: parent.left
                     anchors.right: parent.right
                     height: 50
                     border.color: "#e0e0e0"

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

                     MouseArea {
                         id: area

                         anchors.fill: parent
                         hoverEnabled: true
                         drag.target: dragScheduleRect

                         drag.onActiveChanged: {
                             console.log("take")
                             dropScheduleArea.enabled = !dropScheduleArea.enabled
                             dragScheduleRect.Drag.drop()
                             dragScheduleRect.z = 2
                             if (dropScheduleArea.enabled) {
                                 console.log("drop")
                                 dragScheduleRect.z = 1
                                 dragScheduleRect.x = 0
                                 dragScheduleRect.y = index * dragScheduleRect.height
                             }

                         }
                     }

                     DropArea {
                         id: dropScheduleArea

                         anchors.fill: parent

                         onEntered: {
                             dragScheduleRect.border.color = "#54ff67"

                         }

                         onDropped: {
                             scheduleTaskModel.move(drop.source._index, index, 1)
                         }

                     }

                     Drag.active: dropScheduleArea.drag.active
                     Drag.hotSpot.x: dragScheduleRect.width / 2
                     Drag.hotSpot.y: dragScheduleRect.height / 2
                 }
             }
         }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.75;height:480;width:640}
}
##^##*/

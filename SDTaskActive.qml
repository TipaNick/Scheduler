import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls


Item {
    ListModel {
        id: taskCategory

        ListElement {
            name: "One By Time"
        }

        ListElement {
            name: "Clean Time"
        }

        ListElement {
            name: "Review Code"
        }
    }

    ListView {
        width: parent.width
        height: parent.height
        orientation: Qt.Horizontal
        leftMargin: 10
        rightMargin: 10
        spacing: 10
        clip: true

        model: taskCategory

        delegate: Rectangle {
            color: root.borderColor
            width: viewRoot.width * 0.3
            height: (viewRoot.height < (tasks.count * 60 + 70)) ?  viewRoot.height : tasks.count * 60 + 70
            radius: 4

            ListModel {
                id: tasks

                ListElement {
                    name: "Task 1"
                    time: "18 Feb 11:15"
                }

                ListElement {
                    name: "Task 2"
                    time: "19 Feb 11:25"
                }

                ListElement {
                    name: "Task 3"
                    time: "20 Feb 11:35"
                }
            }

            ListView {
                width: parent.width
                height: parent.height

                leftMargin: 10
                rightMargin: 10
                bottomMargin: 10
                spacing: 10
                clip: true

                model: tasks

                delegate: Rectangle {
                    width: parent.width
                    height: 50

                    RowLayout {
                        anchors.fill: parent
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20

                        Text {
                            text: name
                        }

                        Item {
                            Layout.fillWidth: true
                        }

                        Text {
                            text: time
                        }
                    }
                }

                header: Text {
                    topPadding: 10
                    bottomPadding: 10
                    text: name
                }

                footer: Button {
                    text: "+"
                    onClicked: tasks.append({name: "123", time: "123"})
                }
            }
        }

        footer: Button {
            text: "+"
            onClicked: taskCategory.append({"name": "123"})
        }
    }
}

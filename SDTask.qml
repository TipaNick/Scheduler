import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root

    property string mainColor: "#4870b7"
    property string secondaryColor: "#ffffff"
    property string borderColor: "#e0e0e0"
    property string pickColor: "#e6f0fc"

    ColumnLayout {
        width: parent.width
        height: parent.height

        Rectangle {
            id: daysListPanel

            Layout.preferredHeight: parent.height * 0.08
            Layout.preferredWidth: parent.width
            color: root.mainColor

            RowLayout {
                width: parent.width
                height: parent.height

                Rectangle {
                    Layout.preferredHeight: parent.height
                    Layout.preferredWidth: buttonActualTasks.width
                    Layout.leftMargin: 10

                    Button {
                        id: buttonActualTasks

                        height: parent.height
                        rightPadding: 10
                        leftPadding: 10
                        text: "Actual"
                        background: Rectangle {
                            color: root.mainColor
                        }
                        onClicked: tasksView.currentIndex = 0

                    }

                    Rectangle {
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: (tasksView.currentIndex === 0) ? 3 : 0
                    }

                }



                Rectangle {
                    Layout.preferredHeight: parent.height
                    Layout.preferredWidth: buttonCompletedTasks.width
                    Layout.leftMargin: 10

                    Button {
                        id: buttonCompletedTasks

                        height: parent.height
                        rightPadding: 10
                        leftPadding: 10
                        text: "Completed"
                        background: Rectangle {
                            color: root.mainColor
                        }
                        onClicked: tasksView.currentIndex = 1

                    }

                    Rectangle {
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: (tasksView.currentIndex === 1) ? 3 : 0
                    }

                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: "Find task"
                }
            }
        }

        Rectangle {
            id: viewRoot

            Layout.preferredWidth: parent.width
            Layout.fillHeight: true

            SwipeView {
                id: tasksView

                currentIndex: 0
                anchors.fill: parent
                interactive: false
                clip: true

                SDTaskActive {

                }

                SDTaskCompleted {

                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3;height:720;width:900}
}
##^##*/


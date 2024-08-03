import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

Button {
    id: root

    property string header: ""
    property int fontSize: 0
    property Item anchorsParent: undefined
    property int buttonHeight: 0

    height: root.buttonHeight
    text: root.header
    anchors.top: root.anchorsParent.bottom
    anchors.left: parent.left
    anchors.leftMargin: 10
    anchors.right: parent.right
    anchors.rightMargin: 10
    font.pixelSize: root.fontSize
    background: Rectangle {
        radius: 4
    }
}

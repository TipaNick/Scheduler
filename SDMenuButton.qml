import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

Button {
    id: root

    property string header: ""
    property int fontSize: 0
    property int buttonHeight: 0
    property string backgroundColor: "#ffffff"

    signal changePage

    Layout.preferredHeight: root.buttonHeight
    Layout.preferredWidth: parent.width - 20
    Layout.margins: 10
    text: root.header
    font.pixelSize: root.fontSize
    background: Rectangle {
        radius: 4
        color: root.backgroundColor
    }

    onChangePage: root.changePage()
}

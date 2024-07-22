// slider.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

import QtQuick.Layouts 1.15

Slider {
    id: control
    width: 680
    height: 55

    // Properties
    property bool labelVisible: true
    property real setHandleHeight: 60
    property color checkedColor: Theme.isDarkMode ? "grey" : "#FFFFFF"
    leftPadding: 5

    // Background
    Rectangle {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: control.width
        implicitHeight: control.height
        width: control.availableWidth
        height: implicitHeight
        radius: height / 2
        color: Theme.isDarkMode ? "#1c1d21" : "Grey"

        Rectangle {
            width: control.visualPosition == 0 ? 0 : control.handle.x + control.handle.width
            height: parent.height
            color: control.checkedColor
            radius: height / 2
            layer.enabled: control.pressed

        }
    }

    // Handle
    handle: Rectangle {
        visible: labelVisible
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: setHandleHeight * 2 + 6
        height: setHandleHeight
        radius: implicitWidth / 2
        color: control.pressed ? Qt.darker(control.checkedColor, 1.2) : control.checkedColor

        Label {
            visible: labelVisible
            text: control.value.toFixed(0) + " %"
            anchors.centerIn: parent
            font.pointSize: 20
            font.family: "Montserrat"
            color: Theme.fontColor
        }

        layer.enabled: control.pressed

    }
}

import QtQuick 2.15
import QtQuick.Controls 2.15

// 自定义按钮组件 TypeButton
// 背景为棕色，按钮是圆形的
Button {
    id: typeButton
    property color backgroundColor: "#2f2f39" // 棕色背景
    property real buttonSize: 50 // 按钮大小
    property string buttonText: " " // 按钮上的文字
    property string imageSource: "" // 图片源
    property real imageSize: 0.6 // 图片源

    // 确保按钮是圆形的
    width: buttonSize
    height: buttonSize

    background: Rectangle {
        color: typeButton.backgroundColor
        radius: buttonSize / 2
        width: parent.width
        height: parent.height
        // 保证背景为圆形
    }

    // 添加图片
    Image {
        source: typeButton.imageSource
        anchors.centerIn: parent
        width: buttonSize * imageSize // 调整图片的大小
        height: buttonSize * imageSize // 调整图片的大小
        // 你可以根据需要调整图片的宽高比例
    }

    Text {
        anchors.centerIn: parent
        text: typeButton.buttonText
        color: "white"
        font.pixelSize: 20
        font.bold: true
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            typeButton.clicked()
        }
    }
}

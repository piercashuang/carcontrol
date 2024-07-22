import QtQuick 2.15
import QtQuick.Controls 2.15
import "./Music/qml/components"
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 1920/5*4 // 使用固定的宽度
    height: 1080/5*4 // 使用固定的高度
    title: "Page Switcher"

    // StackView 用于显示和切换页面
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "Page1.qml" // 初始页面
    }

    // 水平布局的按钮
    Rectangle{
            color: "#201f25"
            width: parent.width
            height: 120 * (parent.width / 1920)
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
    Row {
        spacing: 110
        anchors.leftMargin: 110
        anchors.rightMargin: 110
//        anchors.left: parent.left
//        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

//        IconButton{
//            implicitHeight: 55
//            implicitWidth: 55
//            radius:16
//            checked:mainQmlApp.isShuffleEnabled
//            checkable: true
//            setIconColor :checked ? Theme.checkedIconColor : foreColor
//           // setIconText: "\uf074"
//            onCheckedChanged: {
//                mainQmlApp.isShuffleEnabled = checked
//            }
//        }


        //1
        TypeButton {
            buttonSize: 70
            imageSize : 0.6
            imageSource: "pics/menucar.png"
            onClicked: stackView.push("Page1.qml")
        }
        //2
        TypeButton {
            buttonSize: 70
            imageSize : 1.2
            imageSource: "pics/coldair.png"
            onClicked: stackView.push("Page2.qml")
        }

        //3
        TypeButton {
            buttonSize: 70
            imageSize : 1.2
            imageSource: "pics/hotair.png"
            onClicked: stackView.push("Page3.qml")
        }


        //4
        TypeButton {
            buttonSize: 70
            imageSize : 1.3
            imageSource: "pics/position.png"
            onClicked: stackView.push("Page4.qml")
        }

        //5
        TypeButton {
            buttonSize: 70
            imageSize : 1.2
            imageSource: "pics/what.png"
            onClicked: stackView.push("Page5.qml")
        }
        //6
        TypeButton {
            buttonSize: 70
            imageSize : 1.2
            imageSource: "pics/music.png"
            onClicked: stackView.push("Page6.qml")
        }

        //7
        TypeButton {
            buttonSize: 70
            imageSize : 1.2
            imageSource: "pics/control.png"
            onClicked: stackView.push("Page7.qml")
        }


        //8
        TypeButton {
            buttonSize: 70
            imageSize : 1.2
            imageSource: "pics/voice.png"
            onClicked: stackView.push("Page8.qml")
        }

        //9
        TypeButton {
            buttonSize: 70
            imageSize : 1.2
            imageSource: "pics/phone.png"
            onClicked: stackView.push("Page9.qml")
        }




    }
    }
}

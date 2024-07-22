import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    visible: true
    width: parent.width // 使用固定的宽度
    height: parent.height // 使用固定的高度
    color:"#17161c"


    // 加载字体
    FontLoader {
        id: fontawesome
        source: "pics/fontawesome.otf" // 替换为实际路径
    }


    Row {
//        anchors.fill: parent
        width: parent.parent.width
        height: parent.parent.height*0.94
        spacing: 10
        x: 15 // 设置左边距，距离父元素左边 10% 的宽度
        // 第一个区域，占据 40% 宽度


        Rectangle {

            width: parent.width * 1/3.2
            height: parent.height*0.83
            clip: true
            y:parent.height/11
            color: '#363640'
            radius: 20

            Column{

                width: parent.width
                height: parent.height
                padding: 10
                   spacing: 20  // 设置子项之间的间距

                   // 图片
                   Image {
                       id: image1
                       source: "pics/car.png" // 替换为你的图片路径
                       anchors.horizontalCenter: parent.horizontalCenter
                       width: 200
                       height: 150
                       fillMode: Image.PreserveAspectFit
                       visible: imageVisible1 // 控制图片显示
                   }

                   // 文本
                   Text {
                       text: "Tesla Model3"
                       color: "white"
                       font.bold: true
                       font.pointSize: 10
                       font.family: "fontawesome" // 修改为合适的字体名称
                       anchors.horizontalCenter: parent.horizontalCenter
                   }

                   // 自定义样式的滑块
                   Slider {
                       id: control
                       anchors.horizontalCenter: parent.horizontalCenter
                       width: parent.width * 0.8
                       height: 30
                       property bool labelVisible: true
                       property real setHandleHeight: 60
                       property color checkedColor: "#2bbe6d" // 直接设置颜色

                       // 背景
                       Rectangle {
                           x: control.leftPadding
                           y: control.topPadding + control.availableHeight / 2 - height / 2
                           implicitWidth: control.width
                           implicitHeight: control.height
                           width: control.availableWidth
                           height: implicitHeight
                           radius: height / 2
                           color: "#17161c" // 直接设置背景颜色

                           Rectangle {
                               width: control.visualPosition == 0 ? 0 : control.handle.x + control.handle.width
                               height: parent.height
                               color: control.checkedColor
                               radius: height / 2
                           }
                       }

                       // 手柄
                       handle: Rectangle {
                           visible: labelVisible
                           x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
                           y: control.topPadding + control.availableHeight / 2 - height / 2
                           implicitWidth: setHandleHeight * 2 + 6
                           height: setHandleHeight
                           radius: implicitWidth / 2
                           color: control.pressed ? Qt.darker(control.checkedColor, 1.2) : control.checkedColor


                       }
                   }

                   Row{
                       id:travelInfo
                        spacing:25
                       width: parent.width * 0.8
                        anchors.horizontalCenter: parent.horizontalCenter

                       Image {
                           id: imageoil
                           source: "pics/oil.png" // 替换为你的图片路径
                           x:40
                           width: 200/4
                           height: 150/4
                           fillMode: Image.PreserveAspectFit

                       }

                       //剩余的里程
                        Column{
                            spacing:5
                            Text {
                                text: "36.260 Km"
                                color: "white"
                                font.bold: true
                                font.pointSize: 10
                                font.family: "fontawesome" // 修改为合适的字体名称
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Text {
                                text: "剩余里程"
                                color: "white"
                                font.bold: true
                                font.pointSize: 10
                                font.family: "fontawesome" // 修改为合适的字体名称
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                        }

                        //平均耗油
                         Column{
                             spacing:5
                             Text {
                                 text: "128 wh/km"
                                 color: "white"
                                 font.bold: true
                                 font.pointSize: 10
                                 font.family: "fontawesome" // 修改为合适的字体名称
                                 anchors.horizontalCenter: parent.horizontalCenter
                             }

                             Text {
                                 text: "平均耗油"
                                 color: "white"
                                 font.bold: true
                                 font.pointSize: 10
                                 font.family: "fontawesome" // 修改为合适的字体名称
                                 anchors.horizontalCenter: parent.horizontalCenter
                             }

                         }


                         //满油
                          Column{
                              spacing:5
                              Text {
                                  text: "35.5 kWm"
                                  color: "white"
                                  font.bold: true
                                  font.pointSize: 10
                                  font.weight: Font.Black
                                  font.family: "fontawesome" // 修改为合适的字体名称
                                  anchors.horizontalCenter: parent.horizontalCenter
                              }

                              Text {
                                  text: "总容量"
                                  color: "white"
                                  font.bold: true
                                  font.pointSize: 10
                                  font.family: "fontawesome" // 修改为合适的字体名称
                                  anchors.horizontalCenter: parent.horizontalCenter
                              }

                          }



                   }

                   //第三行
                    Row{
                        spacing:25
                       width: parent.width * 1.05
                        anchors.horizontalCenter: parent.horizontalCenter
                        clip:true

                        Rectangle {
                            width: parent.width * 0.45
                            height: 230
                            color: "#2c2c34"  // 内部填充颜色
                            border.color: "#68acd9"  // 边框颜色
                            border.width: 1  // 默认边框宽度为1
                            //clip: true
                            x: -40
                            radius:20


                            Column{
                                                height: parent.height * 0.7
                                                anchors.verticalCenter: parent.verticalCenter
                                                anchors.left: parent.left
                                                anchors.leftMargin: 40

                                                Label {
                                                    text: qsTr("Speed")
                                                    //Layout.alignment: Qt.AlignLeft
                                                    font.pixelSize: 18
                                                    color: "white"
                                                    font.family: "Montserrat"
                                                    font.bold: Font.Bold
                                                    font.weight: Font.Bold
                                                }

                                                Label {
                                                    text: qsTr("128")
                                                    //Layout.alignment: Qt.AlignLeft
                                                    font.pixelSize: 65
                                                    color: "white"
                                                    font.family: "Montserrat"
                                                    font.bold: Font.Bold
                                                    font.weight: Font.Bold
                                                }
                                                Label {
                                                    text: qsTr("km/h")
     //                                               Layout.alignment: Qt.AlignLeft
                                                    font.pixelSize: 18
                                                    color: "grey"
                                                    font.family: "Montserrat"
                                                    font.bold: Font.Bold
                                                    font.weight: Font.Bold
                                                }
                                            }
                        }



                        Rectangle{
                        }
                    }







            }


        }

        Column{


            height: parent.height*0.8
            y:parent.height/11
            width: parent.width * 2/3.2


            //右侧column里最上面的区域
            Rectangle {

                height: parent.height*0.6
                y:parent.height/11
                color: '#363640'
                radius: 20


                width: parent.width*1.038


                // 图片
                Image {
                    id: image2
                    source: "pics/car.png" // 替换为你的图片路径
                    anchors.centerIn: parent
                    width: 200 // 根据需要设置图片宽度
                    height: 150 // 根据需要设置图片高度
                    fillMode: Image.PreserveAspectFit
                    visible: imageVisible2 // 控制图片显示
                }

                // 按钮来显示或隐藏图片
                Button {
                    text: imageVisible2 ? "Hide Image" : "Show Image"
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        imageVisible2 = !imageVisible2
                    }
                }
            }



            Row{

                height: parent.height*0.4
                y:parent.height/11
                width: parent.width
                spacing: 45


                Rectangle {

                    height: parent.height
                    y:parent.height/11
                    color: '#363640'
                    radius: 20


                    width: parent.width*0.5


                    // 图片
                    Image {
                        id: image3
                        source: "pics/car.png" // 替换为你的图片路径
                        anchors.centerIn: parent
                        width: 200 // 根据需要设置图片宽度
                        height: 150 // 根据需要设置图片高度
                        fillMode: Image.PreserveAspectFit
                        visible: imageVisible2 // 控制图片显示
                    }

                    // 按钮来显示或隐藏图片
                    Button {
                        text: imageVisible2 ? "Hide Image" : "Show Image"
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            imageVisible2 = !imageVisible2
                        }
                    }
                }

                Rectangle {

                    height: parent.height
                    y:parent.height/11
                    color: '#363640'
                    radius: 20


                    width: parent.width*0.5


                    // 图片
                    Image {
                        id: image4
                        source: "pics/car.png" // 替换为你的图片路径
                        anchors.centerIn: parent
                        width: 200 // 根据需要设置图片宽度
                        height: 150 // 根据需要设置图片高度
                        fillMode: Image.PreserveAspectFit
                        visible: imageVisible2 // 控制图片显示
                    }

                    // 按钮来显示或隐藏图片
                    Button {
                        text: imageVisible2 ? "Hide Image" : "Show Image"
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            imageVisible2 = !imageVisible2
                        }
                    }
                }
            }




        }

        // 第二个区域，占据 60% 宽度

    }

    // 属性用于控制图片的显示
    property bool imageVisible1: true
    property bool imageVisible2: true
}

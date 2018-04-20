import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    width: 620
    height: 420
    property alias heightValueText: heightValueText
    property alias heightStartMouseArea: heightStartMouseArea
    property alias heightContinueMouseArea: heightContinueMouseArea

    ColumnLayout {
        id: columnLayout
        spacing: 0
        anchors.fill: parent

        Rectangle {
            id: rectangle
            width: 400
            height: 80
            color: "#f0f0f2"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: text1
                x: 285
                y: 10
                color: "#208dfa"
                text: qsTr(
                          "PLEASE STAND IN THE HEIGHT MARK TO TAKE MEASUREMENT")
                font.bold: true
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 14
            }

            Text {
                id: text2
                x: 285
                y: 40
                text: qsTr("NB: Make sure you stand still and straight for accurate measurement")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenterOffset: 1
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle1
            y: 80
            width: 200
            height: 340
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#414242"
                }

                GradientStop {
                    position: 1
                    color: "#1d3842"
                }
            }
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                id: rectangle2
                x: 25
                y: 25
                width: 300
                height: 300
                color: "#19035763"
                radius: 20
                border.width: 2
                border.color: "#ffffff"

                Text {
                    id: text3
                    x: 80
                    y: 10
                    color: "#ffffff"
                    text: qsTr("HEIGHT")
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.pixelSize: 25
                }

                Image {
                    id: image
                    x: 10
                    y: 50
                    width: 260
                    height: 240
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.4
                    source: "resources/icons/height.png"
                }

                Rectangle {
                    id: rectangle3
                    x: 85
                    y: 200
                    width: 130
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.width: 2
                    border.color: "#ffffff"

                    Text {
                        id: heightValueText
                        color: "#ffffff"
                        text: qsTr("170.2")
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }
                }

                Rectangle {
                    id: rectangle4
                    x: 229
                    y: 200
                    width: 62
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.width: 2
                    border.color: "#ffffff"

                    Text {
                        id: text4
                        color: "#ffffff"
                        text: qsTr("CM")
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 24
                    }
                }
            }

            Rectangle {
                id: rectangle5
                x: 340
                y: 25
                width: 260
                height: 220
                color: "#19035763"
                radius: 20
                border.width: 2
                border.color: "#ffffff"

                Text {
                    id: text6
                    x: 8
                    y: 31
                    width: 244
                    height: 67
                    color: "#ffffff"
                    text: "Press the start button and  stand in the area marked as height to take measurement. <br>The Reading led turns Green when complete<br> <br> Press the continue button after reading is complete to proceed"
                    font.bold: true
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 12
                }

                Rectangle {
                    id: heightStartRect
                    x: 8
                    y: 150
                    width: 244
                    height: 60
                    color: "#ffffff"
                    radius: 10
                    border.width: 2
                    border.color: "#208dfa"

                    MouseArea {
                        id: heightStartMouseArea
                        anchors.fill: parent
                    }

                    Text {
                        id: text8
                        text: qsTr("START")
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 12
                    }
                }
            }

            Rectangle {
                id: heightContinueRect
                x: 340
                y: 265
                width: 260
                height: 60
                color: "#ffffff"
                radius: 10
                border.width: 2
                border.color: "#208dfa"

                MouseArea {
                    id: heightContinueMouseArea
                    anchors.fill: parent
                }

                Text {
                    id: text7
                    text: qsTr("Continue")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }
            }
        }
    }
}

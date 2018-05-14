import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    width: 620
    height: 420
    property alias tempStatusImage: tempStatusImage
    property alias tempContinueRect: tempContinueRect
    property alias tempStartRect: tempStartRect
    property alias tempValueText: tempValueText
    property alias tempStartMouseArea: tempStartMouseArea
    property alias tempContinueMouseArea: tempContinueMouseArea

    ColumnLayout {
        id: columnLayout
        spacing: 0
        anchors.fill: parent

        Rectangle {
            id: rectangle
            width: 200
            height: 80
            color: "#f0f0f2"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: text7
                y: 10
                width: 579
                height: 32
                color: "#208dfa"
                text: qsTr("PLEASE STAND IN THE MARKER AND FACE THE TEMPERATURE SENSOR")
                anchors.horizontalCenterOffset: 1
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 14
            }

            Text {
                id: text8
                y: 40
                text: qsTr("NB: For accurate temperature measurement ensure that you are well rested")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: 1
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
                    id: text1
                    x: 80
                    y: 10
                    color: "#ffffff"
                    text: qsTr("TEMPERATURE")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenterOffset: 0
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 25
                }

                Image {
                    id: image
                    x: 100
                    y: 50
                    width: 260
                    height: 240
                    opacity: 0.5
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "resources/icons/temperature.png"
                }

                Rectangle {
                    id: rectangle5
                    x: 90
                    y: 200
                    width: 130
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.width: 2
                    border.color: "#ffffff"

                    Text {
                        id: tempValueText
                        color: "#ffffff"
                        text: "-"
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                    }
                }

                Rectangle {
                    id: rectangle6
                    x: 228
                    y: 200
                    width: 53
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.width: 2
                    border.color: "#ffffff"

                    Text {
                        id: text3
                        color: "#ffffff"
                        text: qsTr("&#176; C")
                        textFormat: Text.RichText
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 23
                    }
                }

                Image {
                    id: tempStatusImage
                    x: 100
                    y: 50
                    width: 70
                    height: 70
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    fillMode: Image.PreserveAspectFit
                    source: "resources/icons/statusred.png"
                }
            }

            Rectangle {
                id: rectangle3
                x: 340
                y: 25
                width: 260
                height: 220
                color: "#19035763"
                radius: 20
                border.color: "#ffffff"
                border.width: 2

                Text {
                    id: text5
                    x: 85
                    y: 8
                    width: 245
                    height: 128
                    color: "#ffffff"
                    text: qsTr("Please press the start button to begin taking temperature reading. <br>The red led turns green when complete<br> <br>Press the continue button after reading is done to proceed")
                    font.bold: true
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }

                Rectangle {
                    id: tempStartRect
                    x: 8
                    y: 150
                    width: 244
                    height: 60
                    color: "#ffffff"
                    radius: 10
                    border.color: "#208dfa"
                    border.width: 2

                    Text {
                        id: text6
                        text: qsTr("START")
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: tempStartMouseArea
                        anchors.fill: parent
                    }
                }
            }

            Rectangle {
                id: tempContinueRect
                x: 340
                y: 265
                width: 260
                height: 60
                color: "#ffffff"
                radius: 10
                visible: false
                border.color: "#208dfa"
                border.width: 2

                MouseArea {
                    id: tempContinueMouseArea
                    anchors.fill: parent
                }

                Text {
                    id: text4
                    text: qsTr("CONTINUE")
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }
        }
    }
}

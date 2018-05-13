import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    width: 620
    height: 420
    property alias pulseStartRect: pulseStartRect
    property alias pulseValueText: pulseValueText
    property alias pulseStartMouseArea: pulseStartMouseArea
    property alias pulseContinueMouseArea: pulseContinueMouseArea

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
                id: text1
                y: 10
                color: "#208dfa"
                text: qsTr("PLEASE PLACE YOUR INDEX FINGER ON THE PULSE SENSOR")
                anchors.horizontalCenterOffset: 1
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 14
            }

            Text {
                id: text2
                y: 40
                text: qsTr("NB: For accurate pulse reading ensure you are relaxed and well rested")
                font.bold: true
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
                border.color: "#ffffff"
                border.width: 2

                Text {
                    id: text3
                    x: 80
                    y: 10
                    color: "#ffffff"
                    text: qsTr("PULSE RATE")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 25
                }

                Image {
                    id: image
                    x: 108
                    y: 50
                    width: 260
                    height: 240
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.6
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "resources/icons/pulserate.png"
                }

                Rectangle {
                    id: rectangle5
                    x: 85
                    y: 200
                    width: 130
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.color: "#ffffff"
                    border.width: 2

                    Text {
                        id: pulseValueText
                        x: 230
                        y: -232
                        color: "#ffffff"
                        text: "-"
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                    }
                }

                Rectangle {
                    id: rectangle6
                    x: 221
                    y: 200
                    width: 64
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.color: "#ffffff"
                    border.width: 2

                    Text {
                        id: text6
                        x: -221
                        y: -232
                        color: "#ffffff"
                        text: qsTr("BPM")
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 23
                    }
                }
            }

            Rectangle {
                id: rectangle4
                x: 340
                y: 25
                width: 260
                height: 220
                color: "#19035763"
                radius: 20
                border.color: "#ffffff"
                border.width: 2

                Text {
                    id: text7
                    y: 8
                    width: 243
                    height: 120
                    color: "#ffffff"
                    text: qsTr("Please press the start button to start pulse reading<br>The red led turns green when complete<br><br>Press the continue button after reading is complete to proceed")
                    font.bold: true
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenterOffset: 1
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }

                Rectangle {
                    id: pulseStartRect
                    x: 21
                    y: 150
                    width: 244
                    height: 60
                    color: "#ffffff"
                    radius: 10
                    border.color: "#208dfa"
                    border.width: 2
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        id: text8
                        text: qsTr("START")
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: pulseStartMouseArea
                        anchors.fill: parent
                    }
                }
            }

            Rectangle {
                id: pulseContinueRect
                x: 340
                y: 265
                width: 260
                height: 60
                color: "#ffffff"
                radius: 10
                border.color: "#208dfa"
                border.width: 2

                Text {
                    id: text4
                    text: qsTr("CONTINUE")
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }
                MouseArea {
                    id: pulseContinueMouseArea
                    anchors.fill: parent
                }
            }
        }
    }
}

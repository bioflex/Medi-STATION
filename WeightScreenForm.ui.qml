import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    width: 620
    height: 420
    property alias weightContinueMouseArea: weightContinueMouseArea

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: rectangle
            width: 200
            height: 80
            color: "#f0f0f2"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

            Text {
                id: text1
                y: 10
                color: "#0093e1"
                text: "PLEASE STAND ON THE WEIGHT SCALE TO TAKE MEASUREMENT"
                font.bold: true
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 14
            }

            Text {
                id: text8
                y: 40
                text: qsTr("NB: For accurate weight measurement, ensure that you are not carrying and additional weight")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle1
            y: 80
            width: 200
            height: 340
            Layout.preferredWidth: -1
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
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

            Rectangle {
                id: rectangle5
                x: 25
                y: 25
                width: 300
                height: 300
                color: "#19035763"
                radius: 20
                border.color: "#ffffff"
                border.width: 2

                Image {
                    id: image
                    x: 10
                    y: 50
                    width: 260
                    height: 240
                    anchors.horizontalCenter: parent.horizontalCenter
                    opacity: 0.6
                    fillMode: Image.PreserveAspectFit
                    source: "resources/icons/weight.png"
                }

                Rectangle {
                    id: rectangle6
                    x: 86
                    y: 200
                    width: 130
                    height: 45
                    color: "#131315"
                    radius: 10
                    border.width: 2
                    border.color: "#ffffff"

                    Text {
                        id: text3
                        color: "#ffffff"
                        text: qsTr("2.5")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }
                }

                Text {
                    id: text5
                    x: 80
                    y: 10
                    color: "#ffffff"
                    text: qsTr("WEIGHT")
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                    font.pixelSize: 25
                }

                Rectangle {
                    id: rectangle3
                    x: 232
                    y: 200
                    width: 48
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.color: "#ffffff"
                    border.width: 2

                    Text {
                        id: text4
                        x: 3
                        y: 2
                        width: 41
                        height: 34
                        color: "#ffffff"
                        text: qsTr("KG")
                        anchors.verticalCenterOffset: 0
                        anchors.horizontalCenterOffset: 2
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                        font.pixelSize: 24
                    }
                }
            }

            Rectangle {
                id: rectangle2
                x: 340
                y: 25
                width: 260
                height: 220
                color: "#19035763"
                radius: 20
                border.color: "#ffffff"
                border.width: 2

                Text {
                    id: text6
                    x: 8
                    y: 16
                    width: 243
                    height: 80
                    color: "#ffffff"
                    text: qsTr("Press the start button and stand on the Weight-Pad to take weight measurement. <br>The Red  led turns Green when complete")
                    horizontalAlignment: Text.AlignLeft
                    font.bold: true
                    wrapMode: Text.WordWrap
                    font.pixelSize: 12
                }

                Rectangle {
                    id: rectangle7
                    x: -197
                    y: 106
                    width: 70
                    height: 70
                    color: "#00ffffff"
                    border.color: "#00c19090"

                    Image {
                        id: image1
                        x: 175
                        y: 13
                        width: 70
                        height: 70
                        fillMode: Image.PreserveAspectCrop
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        source: "resources/icons/statusred.png"
                    }
                }

                Rectangle {
                    id: rectangle8
                    x: 11
                    y: 150
                    width: 240
                    height: 60
                    color: "#ffffff"
                    radius: 10
                    border.width: 2
                    border.color: "#208dfa"
                    MouseArea {
                        id: nextMouseArea1
                        x: -8
                        y: -254
                        anchors.fill: parent
                    }

                    Text {
                        id: text7
                        x: 129
                        y: 28
                        text: qsTr(" START")
                        font.bold: true
                        font.pixelSize: 12
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenterOffset: 6
                        anchors.horizontalCenterOffset: 0
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }

            Rectangle {
                id: weightContinueRect
                x: 340
                y: 261
                width: 260
                height: 60
                color: "#ffffff"
                radius: 10
                border.width: 2
                border.color: "#208dfa"

                MouseArea {
                    id: weightContinueMouseArea
                    x: -8
                    y: -254
                    anchors.fill: parent
                }

                Text {
                    id: text2
                    x: 129
                    y: 28
                    text: qsTr(" CONTINUE")
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    anchors.verticalCenterOffset: 6
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }
        }
    }
}

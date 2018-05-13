import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    width: 620
    height: 420
    property alias bpStartRect: bpStartRect
    property alias bpStartMouseArea: bpStartMouseArea
    property alias bloodpressureValueText: bloodpressureValueText
    property alias bloodPreRect: bloodPreRect
    property alias bloodPreMouseArea: bloodPreMouseArea

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
                text: qsTr("PLEASE FIRMLY CUF THE BLOOD PRESSURE MONITOR TO YOUR ARM")
                anchors.horizontalCenterOffset: 0
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 14
            }

            Text {
                id: text2
                x: 293
                y: 40
                text: qsTr("NB: for accurate blood pressure reading ensure you are in a relaxed position")
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
                    id: text4
                    y: 10
                    color: "#ffffff"
                    text: qsTr("BLOOD PRESSURE")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenterOffset: 0
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 25
                }

                Image {
                    id: image
                    x: 105
                    y: 50
                    width: 260
                    height: 240
                    opacity: 0.6
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "resources/icons/bloodpressure.png"
                }

                Rectangle {
                    id: rectangle4
                    x: 85
                    y: 200
                    width: 130
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.width: 2
                    border.color: "#ffffff"

                    Text {
                        id: bloodpressureValueText
                        color: "#ffffff"
                        text: "-"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                    }
                }

                Rectangle {
                    id: rectangle5
                    x: 221
                    y: 200
                    width: 71
                    height: 45
                    color: "#000000"
                    radius: 10
                    border.color: "#ffffff"
                    border.width: 2

                    Text {
                        id: text6
                        color: "#ffffff"
                        text: qsTr("mm/Hg")
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 16
                    }
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
                    id: text7
                    y: 13
                    width: 243
                    height: 126
                    color: "#ffffff"
                    text: qsTr("Press the start button to begin blood pressure reading.<br> The red led turns green when done.<br> <br>Press the continue button when reading is done to proceed")
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    font.bold: true
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }

                Rectangle {
                    id: bpStartRect
                    y: 150
                    width: 244
                    height: 54
                    color: "#ffffff"
                    radius: 10
                    border.color: "#208dfa"
                    border.width: 2
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter

                    MouseArea {
                        id: bpStartMouseArea
                        anchors.fill: parent
                    }

                    Text {
                        id: text8
                        text: qsTr("START")
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                    }
                }
            }

            Rectangle {
                id: bloodPreRect
                x: 340
                y: 265
                width: 260
                height: 60
                color: "#ffffff"
                radius: 10
                border.color: "#208dfa"
                border.width: 2

                MouseArea {
                    id: bloodPreMouseArea
                    anchors.fill: parent
                }

                Text {
                    id: text3
                    text: qsTr("CONTINUE")
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }
            }
        }
    }
}

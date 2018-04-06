import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 800
    height: 420
    property alias bloodPressureScreen: bloodPressureScreen
    property alias pulseScreen: pulseScreen
    property alias temperatureScreen: temperatureScreen
    property alias heightScreen: heightScreen
    property alias weightScreen: weightScreen
    property alias bpRect: bpRect
    property alias pulseRect: pulseRect
    property alias tempRect: tempRect
    property alias heightRect: heightRect
    property alias weightRect: weightRect
    property alias detailStackLayout: detailStackLayout
    property alias screenDetailRect: screenDetailRect

    RowLayout {
        id: rowLayout
        spacing: 0
        anchors.fill: parent

        Rectangle {
            id: rectangle
            width: 180
            color: "#30373d"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Rectangle {
                id: weightRect
                y: 100
                width: 180
                height: 60
                color: "#22272a"

                Text {
                    id: text1
                    color: "#ffffff"
                    text: "Weight"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: heightRect
                x: 0
                y: 160
                width: 180
                height: 60
                color: "#22272a"

                Text {
                    id: text2
                    color: "#ffffff"
                    text: qsTr("Height")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: tempRect
                x: 0
                y: 220
                width: 180
                height: 60
                color: "#22272a"

                Text {
                    id: text3
                    color: "#ffffff"
                    text: qsTr("Temperature")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: pulseRect
                x: 0
                y: 280
                width: 180
                height: 60
                color: "#22272a"

                Text {
                    id: text4
                    color: "#ffffff"
                    text: qsTr("Pulse Rate")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: bpRect
                x: 0
                y: 340
                width: 180
                height: 60
                color: "#22272a"

                Text {
                    id: text5
                    color: "#ffffff"
                    text: qsTr("Blood Pressure")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }
        }

        Rectangle {
            id: screenDetailRect
            width: 200
            height: 200
            color: "#ffffff"
            Layout.fillWidth: true
            Layout.fillHeight: true

            StackLayout {
                id: detailStackLayout
                anchors.fill: parent

                WeightScreen {
                    id: weightScreen
                }

                HeightScreen {
                    id: heightScreen
                }

                TemperatureScreen {
                    id: temperatureScreen
                }

                PulseScreen {
                    id: pulseScreen
                }

                BloodPressureScreen {
                    id: bloodPressureScreen
                }
            }
        }
    }

    Image {
        id: image
        x: 8
        y: 20
        width: 159
        height: 69
        fillMode: Image.PreserveAspectFit
        source: "resources/icons/Medi-Station-logo.png"
    }
}

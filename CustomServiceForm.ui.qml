import QtQuick 2.4
import QtQuick.Controls 2.3

Item {
    width: 800
    height: 420
    property alias bpSelectText: bpSelectText
    property alias bpSelectHText: bpSelectHText
    property alias bpSelectMouseArea: bpSelectMouseArea
    property alias bpSelectRect: bpSelectRect
    property alias pulseSelectText: pulseSelectText
    property alias pulseSelectMouseArea: pulseSelectMouseArea
    property alias pulseSelectHText: pulseSelectHText
    property alias pulseSelectRect: pulseSelectRect
    property alias tempSelectText: tempSelectText
    property alias tempSelectHText: tempSelectHText
    property alias tempSelectMouseArea: tempSelectMouseArea
    property alias tempSelectRect: tempSelectRect
    property alias bmiSelectText: bmiSelectText
    property alias bmiSelectHText: bmiSelectHText
    property alias bmiSelectMouseArea: bmiSelectMouseArea
    property alias bmiSelectRect: bmiSelectRect
    property alias heightSelectText: heightSelectText
    property alias heightSelectHText: heightSelectHText
    property alias heightSelectMouseArea: heightSelectMouseArea
    property alias heightSelectRect: heightSelectRect
    property alias weightSelectRect: weightSelectRect
    property alias weightSelectHText: weightSelectHText
    property alias weightSelectText: weightSelectText
    property alias weightSelectMouseArea: weightSelectMouseArea
    property alias customSelectText: customSelectText

    Rectangle {
        id: rectangle
        width: 800
        height: 60
        color: "#d2d3d1"

        Text {
            id: customSelectText
            y: 23
            color: "#0093e1"
            text: qsTr("PLEASE SELECT YOUR PREFERRED SCREENING SERVICE")
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 20
        }
    }

    Rectangle {
        id: rectangle1
        y: 60
        width: 800
        height: 360
        color: "#23232f"
        border.width: 2

        Image {
            id: image
            opacity: 0.1
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "resources/icons/Medi-Station-logo.png"
        }

        Rectangle {
            id: weightSelectRect
            x: 50
            y: 40
            width: 200
            height: 120
            radius: 10
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#f29084"
                }

                GradientStop {
                    position: 1
                    color: "#f45d5d"
                }
            }
            border.color: "#208dfa"
            border.width: 0

            MouseArea {
                id: weightSelectMouseArea
                width: 20
                anchors.fill: parent
            }

            Text {
                id: weightSelectHText
                y: 10
                color: "#ffffff"
                text: qsTr("WEIGHT")
                font.bold: true
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }

            Text {
                id: weightSelectText
                x: 19
                y: 41
                width: 160
                height: 65
                color: "#ffffff"
                text: qsTr("Measure your current weight")
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                wrapMode: Text.WordWrap
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: heightSelectRect
            x: 300
            y: 40
            width: 200
            height: 120
            radius: 10
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#278bbc"
                }

                GradientStop {
                    position: 1
                    color: "#0c6998"
                }
            }
            border.width: 0
            MouseArea {
                id: heightSelectMouseArea
                width: 20
                anchors.fill: parent
            }

            Text {
                id: heightSelectHText
                y: 10
                color: "#ffffff"
                text: qsTr("HEIGHT")
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                font.pixelSize: 12
            }

            Text {
                id: heightSelectText
                x: 19
                y: 41
                width: 160
                height: 65
                color: "#ffffff"
                text: qsTr("Measure your current height")
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                wrapMode: Text.WordWrap
            }
            border.color: "#208dfa"
        }

        Rectangle {
            id: bmiSelectRect
            x: 550
            y: 40
            width: 200
            height: 120
            radius: 10
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#38ae32"
                }

                GradientStop {
                    position: 1
                    color: "#237d1d"
                }
            }
            border.width: 0
            MouseArea {
                id: bmiSelectMouseArea
                width: 20
                anchors.fill: parent
            }

            Text {
                id: bmiSelectHText
                y: 10
                color: "#ffffff"
                text: qsTr("BODY MASS INDEX")
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                font.pixelSize: 12
            }

            Text {
                id: bmiSelectText
                x: 15
                y: 42
                width: 177
                height: 70
                color: "#ffffff"
                text: qsTr("Measure your current body mass index. This requires measurements of both weight and height")
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                wrapMode: Text.WordWrap
            }
            border.color: "#208dfa"
        }

        Rectangle {
            id: tempSelectRect
            x: 50
            y: 200
            width: 200
            height: 120
            radius: 10
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#bcc860"
                }

                GradientStop {
                    position: 1
                    color: "#99a535"
                }
            }
            border.width: 0
            MouseArea {
                id: tempSelectMouseArea
                width: 20
                anchors.fill: parent
            }

            Text {
                id: tempSelectHText
                y: 10
                color: "#ffffff"
                text: qsTr("TEMPERATURE")
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                font.pixelSize: 12
            }

            Text {
                id: tempSelectText
                x: 19
                y: 41
                width: 160
                height: 65
                color: "#ffffff"
                text: qsTr("Measure your current temperature")
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                wrapMode: Text.WordWrap
            }
            border.color: "#208dfa"
        }

        Rectangle {
            id: pulseSelectRect
            x: 300
            y: 200
            width: 200
            height: 120
            radius: 10
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#f6b349"
                }

                GradientStop {
                    position: 1
                    color: "#bb8025"
                }
            }
            border.width: 0
            MouseArea {
                id: pulseSelectMouseArea
                width: 20
                anchors.fill: parent
            }

            Text {
                id: pulseSelectHText
                y: 10
                color: "#ffffff"
                text: qsTr("PULSE RATE")
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                font.pixelSize: 12
            }

            Text {
                id: pulseSelectText
                x: 19
                y: 41
                width: 160
                height: 65
                color: "#ffffff"
                text: qsTr("Measure your current pulse rate")
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                wrapMode: Text.WordWrap
            }
            border.color: "#208dfa"
        }

        Rectangle {
            id: bpSelectRect
            x: 550
            y: 200
            width: 200
            height: 120
            radius: 10
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ae60ec"
                }

                GradientStop {
                    position: 1
                    color: "#854bb4"
                }
            }
            border.width: 0
            MouseArea {
                id: bpSelectMouseArea
                width: 20
                anchors.fill: parent
            }

            Text {
                id: bpSelectHText
                y: 10
                color: "#ffffff"
                text: qsTr("BLOOD PRESSURE")
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                font.pixelSize: 12
            }

            Text {
                id: bpSelectText
                x: 19
                y: 41
                width: 160
                height: 65
                color: "#ffffff"
                text: qsTr("Measure your current blood pressure")
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                wrapMode: Text.WordWrap
            }
            border.color: "#208dfa"
        }
    }
}

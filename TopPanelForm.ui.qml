import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    width: 800
    height: 50
    property alias backRect: backRect
    property alias backMouseArea: backMouseArea
    property alias quitMouseArea: quitMouseArea
    property alias statusText: statusText
    property alias image: image
    property alias dateTimeText: dateTimeText
    property alias homeMouseArea: homeMouseArea

    Rectangle {
        id: topPanelRect
        color: "#e1e1e1"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#30373d"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        anchors.fill: parent

        Rectangle {
            id: dateTimeRect
            x: 10
            y: 5
            width: 270
            height: 40
            radius: 1
            Layout.fillHeight: true
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#fb8f23"
                }

                GradientStop {
                    position: 1
                    color: "#b16213"
                }
            }

            Text {
                id: dateTimeText
                x: 0
                y: 93
                color: "#ffffff"
                text: qsTr("Saturday - 10th February, 2018 - 7:59PM")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Tahoma"
                font.bold: true
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: statusRect
            x: 320
            y: 5
            width: 160
            height: 40
            radius: 1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#fb8f23"
                }

                GradientStop {
                    position: 1
                    color: "#b16213"
                }
            }
            Layout.fillHeight: true

            Text {
                id: statusText
                x: 8
                color: "#ffffff"
                text: qsTr("System Status:")
                anchors.verticalCenter: parent.verticalCenter
                verticalAlignment: Text.AlignTop
                font.family: "Tahoma"
                font.bold: true
                font.pixelSize: 12
            }

            Image {
                id: image
                x: 105
                width: 40
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                source: "resources/icons/statusgreen.png"
            }
        }

        Rectangle {
            id: backRect
            x: 700
            y: 2
            width: 90
            height: 45
            visible: false
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#fb8f23"
                }

                GradientStop {
                    position: 1
                    color: "#b16213"
                }
            }

            Image {
                id: backImage
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "resources/icons/back-button.png"
            }

            MouseArea {
                id: backMouseArea
                anchors.fill: parent
            }
        }

        Rectangle {
            id: homeRect
            x: 570
            y: 2
            width: 45
            height: 45
            radius: 2
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#fb8f23"
                }

                GradientStop {
                    position: 1
                    color: "#b16213"
                }
            }

            Image {
                id: homeImage
                x: 0
                y: 0
                width: 45
                height: 45
                fillMode: Image.PreserveAspectFit
                source: "resources/icons/home.png"
            }

            MouseArea {
                id: homeMouseArea
                anchors.fill: parent
            }
        }

        Rectangle {
            id: quitRect
            x: 500
            y: 2
            width: 45
            height: 45
            radius: 2
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#fb8f23"
                }

                GradientStop {
                    position: 1
                    color: "#b16213"
                }
            }
            Image {
                id: quitImage
                x: 0
                y: 0
                width: 45
                height: 45
                fillMode: Image.PreserveAspectFit
                source: "resources/icons/close-window.png"
            }

            MouseArea {
                id: quitMouseArea
                anchors.fill: parent
            }
        }
    }
}

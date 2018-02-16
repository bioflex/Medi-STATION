import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    width: 800
    height: 50

    Rectangle {
        id: topPanelRect
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

        MouseArea {
            id: restartMouseArea
            x: 1400
            width: 45
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 1
            anchors.right: parent.right
            anchors.rightMargin: -636

            Rectangle {
                id: restartRect
                x: -700
                y: -2
                width: 45
                height: 45
                radius: 2
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#58aadd"
                    }

                    GradientStop {
                        position: 1
                        color: "#0e3688"
                    }
                }

                Image {
                    id: restartImage
                    x: 0
                    y: 0
                    width: 45
                    height: 45
                    fillMode: Image.PreserveAspectFit
                    source: "resources/icons/restart.png"
                }
            }
        }

        MouseArea {
            id: helpMouseArea
            y: 0
            width: 45
            height: 45
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 10

            Rectangle {
                id: helpRect
                width: 45
                height: 45
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#0e4df1"
                    }

                    GradientStop {
                        position: 1
                        color: "#212d4b"
                    }
                }

                Image {
                    id: helpImage
                    width: 45
                    height: 45
                    fillMode: Image.PreserveAspectFit
                    source: "resources/icons/help.png"
                }
            }
        }


    }
}

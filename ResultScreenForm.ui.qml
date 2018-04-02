import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    width: 800
    height: 420

    ColumnLayout {
        id: columnLayout
        spacing: 0
        anchors.fill: parent

        Rectangle {
            id: rectangle
            width: 200
            height: 60
            color: "#f0f0f2"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: text1
                y: 10
                color: "#208dfa"
                text: qsTr("SCREENING RESULTS")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 14
            }

            Text {
                id: text2
                y: 40
                text: qsTr("THANK YOU FOR USING OUR SERVICES")
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle1
            y: 60
            width: 200
            height: 360
            color: "#22272a"
            radius: 0
            Layout.fillWidth: true
            Layout.fillHeight: true

            Rectangle {
                id: rectangle2
                x: 10
                y: 10
                width: 200
                height: 165
                radius: 10
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#dbdedf"
                    }

                    GradientStop {
                        position: 1
                        color: "#ced6da"
                    }
                }

                Image {
                    id: image
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    opacity: 0.5
                    source: "resources/icons/weight.png"
                }

                Text {
                    id: text3
                    y: 14
                    text: qsTr("WEIGHT")
                    font.bold: true
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 14
                }

                Rectangle {
                    id: rectangle8
                    x: 48
                    y: 104
                    width: 101
                    height: 33
                    color: "#000000"
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    border.color: "#ffffff"
                    border.width: 2

                    Text {
                        id: text4
                        color: "#ffffff"
                        text: qsTr("25.4 KG")
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                    }
                }
            }

            Rectangle {
                id: rectangle4
                x: 220
                y: 10
                width: 200
                height: 165
                radius: 10
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#dbdedf"
                    }

                    GradientStop {
                        position: 1
                        color: "#ced6da"
                    }
                }

                Image {
                    id: image2
                    opacity: 0.5
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    source: "resources/icons/height.png"
                }

                Text {
                    id: text7
                    y: 14
                    text: qsTr("HEIGHT")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 1
                    font.pixelSize: 14
                    font.bold: true
                }

                Rectangle {
                    id: rectangle10
                    x: 48
                    y: 104
                    width: 101
                    height: 33
                    color: "#000000"
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    border.width: 2
                    Text {
                        id: text8
                        color: "#ffffff"
                        text: qsTr("170.3 CM")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                        font.bold: true
                    }
                    border.color: "#ffffff"
                }
            }

            Rectangle {
                id: rectangle6
                x: 430
                y: 10
                width: 200
                height: 165
                radius: 10
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#a2dcf9"
                    }

                    GradientStop {
                        position: 1
                        color: "#4889a9"
                    }
                }

                Image {
                    id: image3
                    x: -1
                    y: 5
                    fillMode: Image.PreserveAspectFit
                    source: "resources/icons/bmi.png"
                    opacity: 0.5
                    anchors.fill: parent
                }

                Text {
                    id: text9
                    y: 14
                    text: qsTr("BMI")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 1
                    font.pixelSize: 14
                    font.bold: true
                }

                Rectangle {
                    id: rectangle11
                    x: 48
                    y: 104
                    width: 101
                    height: 33
                    color: "#000000"
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    border.width: 2
                    Text {
                        id: text10
                        color: "#ffffff"
                        text: qsTr("24.5")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                        font.bold: true
                    }
                    border.color: "#ffffff"
                }
            }

            Rectangle {
                id: rectangle3
                x: 10
                y: 185
                width: 200
                height: 165
                radius: 10
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#21c818"
                    }

                    GradientStop {
                        position: 1
                        color: "#29790a"
                    }
                }

                Image {
                    id: image1
                    opacity: 0.5
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    source: "resources/icons/temperature.png"
                }

                Text {
                    id: text6
                    y: 14
                    text: qsTr("TEMPERATURE")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 1
                    font.pixelSize: 14
                    font.bold: true
                }

                Rectangle {
                    id: rectangle9
                    x: 48
                    y: 104
                    width: 101
                    height: 33
                    color: "#000000"
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    border.width: 2
                    Text {
                        id: text5
                        color: "#ffffff"
                        text: qsTr("37.4 C")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                        font.bold: true
                    }
                    border.color: "#ffffff"
                }
            }

            Rectangle {
                id: rectangle5
                x: 220
                y: 185
                width: 200
                height: 165
                radius: 10
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#e5aaa3"
                    }

                    GradientStop {
                        position: 1
                        color: "#cb1c06"
                    }
                }

                Image {
                    id: image4
                    x: 8
                    y: -7
                    fillMode: Image.PreserveAspectFit
                    source: "resources/icons/pulserate.png"
                    opacity: 0.5
                    anchors.fill: parent
                }

                Text {
                    id: text11
                    y: 14
                    text: qsTr("PULSE RATE")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 1
                    font.pixelSize: 14
                    font.bold: true
                }

                Rectangle {
                    id: rectangle12
                    x: 48
                    y: 104
                    width: 101
                    height: 33
                    color: "#000000"
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    border.width: 2
                    Text {
                        id: text12
                        color: "#ffffff"
                        text: qsTr("76 BPM")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                        font.bold: true
                    }
                    border.color: "#ffffff"
                }
            }

            Rectangle {
                id: rectangle7
                x: 430
                y: 185
                width: 200
                height: 165
                radius: 10
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#d8b162"
                    }

                    GradientStop {
                        position: 1
                        color: "#d28f08"
                    }
                }
                visible: true

                Image {
                    id: image5
                    x: 5
                    y: 0
                    fillMode: Image.PreserveAspectFit
                    source: "resources/icons/bloodpressure.png"
                    opacity: 0.5
                    anchors.fill: parent
                }

                Text {
                    id: text13
                    y: 14
                    text: qsTr("BLOOD PRESSURE")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 1
                    font.pixelSize: 14
                    font.bold: true
                }

                Rectangle {
                    id: rectangle13
                    x: 48
                    y: 104
                    width: 110
                    height: 33
                    color: "#000000"
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    border.width: 2
                    Text {
                        id: text14
                        color: "#ffffff"
                        text: qsTr("120/90 mm/Hg")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                        font.bold: true
                    }
                    border.color: "#ffffff"
                }
            }
        }
    }
}

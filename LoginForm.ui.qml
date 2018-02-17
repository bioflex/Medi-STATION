import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    width: 800
    height: 420
    property alias loginMouseArea: loginMouseArea
    property alias userPinTextField: userPinTextField
    property alias userNumberTextField: userNumberTextField

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: rectangle
            width: 400
            height: 200
            color: "#22272a"
            Layout.fillWidth: false
            Layout.fillHeight: true

            Text {
                id: text11
                x: 51
                y: 28
                color: "#ffffff"
                text: qsTr("Login with your Phone Number and PIN")
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pixelSize: 16
            }

            Rectangle {
                id: rectangle15
                x: -10
                y: 77
                width: 272
                height: 168
                color: "#ffffff"
                radius: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 9
                border.width: 1
                border.color: "#b7b8b5"

                TextField {
                    id: userNumberTextField
                    width: 184
                    height: 40
                    text: qsTr("")
                    anchors.verticalCenterOffset: -34
                    anchors.horizontalCenterOffset: 0
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 15
                    placeholderText: "PHONE NUMBER"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }

                TextField {
                    id: userPinTextField
                    x: 44
                    y: 99
                    width: 184
                    height: 40
                    text: qsTr("")
                    anchors.horizontalCenterOffset: 0
                    font.pointSize: 15
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: "PIN"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: rectangle2
                x: 100
                y: 282
                width: 272
                height: 53
                color: "#b4b4b4"
                radius: 10
                anchors.horizontalCenterOffset: 9
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: text12
                    x: 107
                    y: 20
                    color: "#ffffff"
                    text: qsTr("LOGIN")
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 17
                }

                MouseArea {
                    id: loginMouseArea
                    anchors.fill: parent
                }
            }
        }

        Rectangle {
            id: rectangle1
            width: 400
            height: 200
            color: "#615f64"
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.fillHeight: true

            Grid {
                id: grid
                x: 0
                y: 10
                width: 190
                height: 255
                spacing: 5
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                rows: 4
                columns: 3

                Rectangle {
                    id: rectangle4
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10

                    Text {
                        id: text1
                        color: "#ffffff"
                        text: qsTr("1")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle5
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text2
                        color: "#ffffff"
                        text: qsTr("2")
                        renderType: Text.QtRendering
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea1
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle6
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text3
                        color: "#ffffff"
                        text: qsTr("3")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea2
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle7
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text4
                        color: "#ffffff"
                        text: qsTr("4")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea3
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle8
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text5
                        color: "#ffffff"
                        text: qsTr("5")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea4
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle9
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text6
                        color: "#ffffff"
                        text: qsTr("6")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea5
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle10
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text7
                        color: "#ffffff"
                        text: qsTr("7")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea6
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle11
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text8
                        color: "#ffffff"
                        text: qsTr("8")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea7
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle12
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text9
                        color: "#ffffff"
                        text: qsTr("9")
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }

                    MouseArea {
                        id: mouseArea8
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle13
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Text {
                        id: text10
                        color: "#ffffff"
                        text: qsTr("0")
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                        font.bold: true
                    }

                    MouseArea {
                        id: mouseArea9
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle14
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10

                    Image {
                        id: image
                        width: 40
                        height: 40
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "resources/icons/backspace_white.png"
                    }

                    MouseArea {
                        id: mouseArea10
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}

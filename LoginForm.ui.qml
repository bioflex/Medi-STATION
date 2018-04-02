import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    width: 800
    height: 420
    property alias keyBackRect: keyBackRect
    property alias keyZeroRect: keyZeroRect
    property alias keyNineRect: keyNineRect
    property alias keyEightRect: keyEightRect
    property alias keySevenRect: keySevenRect
    property alias keySixRect: keySixRect
    property alias keyFiveRect: keyFiveRect
    property alias keyFourRect: keyFourRect
    property alias keyThreeRect: keyThreeRect
    property alias keyTwoRect: keyTwoRect
    property alias keyOneRect: keyOneRect
    property alias loginRect: loginRect
    property alias loginText: loginText
    property alias loginBannerText: loginBannerText
    property alias keyBackMouseArea: keyBackMouseArea
    property alias keyZeroMouseArea: keyZeroMouseArea
    property alias keyNineMouseArea: keyNineMouseArea
    property alias keyEightMouseArea: keyEightMouseArea
    property alias keySevenMouseArea: keySevenMouseArea
    property alias keySixMouseArea: keySixMouseArea
    property alias keyFiveMouseArea: keyFiveMouseArea
    property alias keyFourMouseArea: keyFourMouseArea
    property alias keyThreeMouseArea: keyThreeMouseArea
    property alias keyTwoMouseArea: keyTwoMouseArea
    property alias keyOneMouseArea: keyOneMouseArea
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
                id: loginBannerText
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
                id: loginRect
                x: 100
                y: 282
                width: 272
                height: 53
                color: "#ffffff"
                radius: 10
                border.color: "#0093e1"
                border.width: 2
                anchors.horizontalCenterOffset: 9
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: loginText
                    x: 107
                    y: 20
                    color: "#0093e1"
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
            id: keypadRect
            width: 400
            height: 200
            color: "#615f64"
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.fillHeight: true

            GridLayout {
                id: keypadGridLayout
                width: 190
                height: 255
                columns: 3
                rows: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Rectangle {
                    id: keyOneRect
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
                        id: keyOneMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyTwoRect
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
                        id: keyTwoMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyThreeRect
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
                        id: keyThreeMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyFourRect
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
                        id: keyFourMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyFiveRect
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
                        id: keyFiveMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keySixRect
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
                        id: keySixMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keySevenRect
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
                        id: keySevenMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyEightRect
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
                        id: keyEightMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyNineRect
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
                        id: keyNineMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyZeroRect
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
                        id: keyZeroMouseArea
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: keyBackRect
                    width: 60
                    height: 60
                    color: "#b4b4b4"
                    radius: 10
                    Layout.fillWidth: false

                    Image {
                        id: image
                        width: 32
                        height: 20
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "resources/icons/backspace_white.png"
                    }

                    MouseArea {
                        id: keyBackMouseArea
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}

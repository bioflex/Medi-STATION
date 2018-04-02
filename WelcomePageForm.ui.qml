import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    width: 800
    height: 420
    property alias guestLTextArea: guestLTextArea
    property alias nhisLTextArea: nhisLTextArea
    property alias userLTextArea: userLTextArea
    property alias guestText: guestText
    property alias nhisLText: nhisLText
    property alias userLText: userLText
    property alias wAcessText: wAcessText
    property alias wWelcomeText: wWelcomeText
    property alias userLoginMouseArea: userLoginMouseArea
    property alias guestRect: guestRect
    property alias guestMouseArea: guestMouseArea
    property alias nhisLoginRect: nhisLoginRect
    property alias nhisMouseArea: nhisMouseArea
    property alias userLoginRect: userLoginRect

    RowLayout {
        id: topRowLayout
        spacing: 0
        anchors.fill: parent

        Rectangle {
            id: wLeftRect
            width: 200
            height: 200
            color: "#ffffff"
            Layout.fillHeight: true
            Layout.fillWidth: true


            Image {
                id: wLeftImage
                opacity: 0.7
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
                source: "resources/images/mainbackhigh.jpg"
            }

            Image {
                id: image
                x: 38
                y: 114
                width: 324
                height: 192
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                opacity: 1
                source: "resources/icons/Medi-Station-logo.png"
            }
        }

        Rectangle {
            id: wRightRect
            width: 200
            height: 200
            color: "#615f64"
            Layout.fillHeight: true
            Layout.fillWidth: true


            ColumnLayout {
                id: columnLayout
                anchors.fill: parent


                Text {
                    id: wWelcomeText
                    color: "#ffffff"
                    text: qsTr("Welcome To Your Medi-STATION")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    font.bold: true
                    font.family: "Tahoma"
                    font.pixelSize: 20
                }


                Text {
                    id: wAcessText
                    color: "#ffffff"
                    text: qsTr("How will you like to access our services?")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    font.bold: true
                    font.pixelSize: 12
                }

                Rectangle {
                    id: userLoginRect
                    width: 300
                    height: 80
                    color: "#ffffff"
                    radius: 20
                    border.color: "#0093e1"
                    border.width: 2
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    Text {
                        id: userLText
                        x: 118
                        y: 8
                        color: "#0093e1"
                        text: qsTr("User Login")
                        font.bold: true
                        font.pixelSize: 12
                    }

                    TextArea {
                        id: userLTextArea
                        x: 8
                        y: 22
                        width: 279
                        height: 58
                        color: "#767676"
                        text: qsTr("Select this option if you already have an account . You can create a new account using our free comparion mobile app.")
                        font.pointSize: 8
                        wrapMode: Text.WordWrap
                    }

                    MouseArea {
                        id: userLoginMouseArea
                        anchors.fill: parent
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }

                Rectangle {
                    id: nhisLoginRect
                    y: 205
                    width: 300
                    height: 80
                    color: "#ffffff"
                    radius: 20
                    border.color: "#0093e1"
                    border.width: 2
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    Text {
                        id: nhisLText
                        x: 115
                        y: 6
                        color: "#0093e1"
                        text: qsTr("NHIS Login")
                        font.bold: true
                        font.pixelSize: 12
                    }

                    TextArea {
                        id: nhisLTextArea
                        x: 18
                        y: 26
                        width: 264
                        height: 44
                        color: "#626262"
                        text: qsTr("Select this option to access the system with a valid NHIS Card")
                        wrapMode: Text.WordWrap
                    }

                    MouseArea {
                        id: nhisMouseArea
                        anchors.fill: parent
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }




                Rectangle {
                    id: guestRect
                    y: 320
                    width: 300
                    height: 80
                    color: "#ffffff"
                    radius: 20
                    border.width: 2
                    border.color: "#0093e1"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    Text {
                        id: guestText
                        x: 114
                        y: 10
                        color: "#0093e1"
                        text: qsTr("Guest Login")
                        font.bold: true
                        horizontalAlignment: Text.AlignLeft
                        font.pixelSize: 12
                    }

                    TextArea {
                        id: guestLTextArea
                        x: 9
                        y: 23
                        width: 284
                        height: 39
                        color: "#7c7c7c"
                        text: qsTr("Select this option to use the system as a guest.        NB: You will not be able to store screening results")
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                    }

                    MouseArea {
                        id: guestMouseArea
                        anchors.fill: parent
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }









            }

        }
    }
}

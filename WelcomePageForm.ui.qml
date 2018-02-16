import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    width: 800
    height: 420
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
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
                source: "resources/images/mainbackhigh.jpg"
            }
        }

        Rectangle {
            id: wRightRect
            width: 200
            height: 200
            color: "#d2d3d1"
            Layout.fillHeight: true
            Layout.fillWidth: true


            ColumnLayout {
                id: columnLayout
                anchors.fill: parent


                Text {
                    id: wWelcomeText
                    color: "#208dfa"
                    text: qsTr("Welcome To Your Medi-STATION")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    font.bold: true
                    font.family: "Tahoma"
                    font.pixelSize: 20
                }


                Text {
                    id: wAcessText
                    text: qsTr("How will you like to access our services?")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    font.bold: true
                    font.pixelSize: 12
                }

                Rectangle {
                    id: userLoginRect
                    width: 300
                    height: 70
                    color: "#ffffff"
                    radius: 20
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    Text {
                        id: userLText
                        x: 118
                        y: 8
                        text: qsTr("User Login")
                        font.bold: true
                        font.pixelSize: 12
                    }

                    TextArea {
                        id: textArea
                        x: 8
                        y: 22
                        width: 279
                        height: 40
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
                    width: 300
                    height: 70
                    color: "#ffffff"
                    radius: 20
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    Text {
                        id: nhisLText
                        x: 115
                        y: 6
                        text: qsTr("NHIS Login")
                        font.bold: true
                        font.pixelSize: 12
                    }

                    TextArea {
                        id: textArea2
                        x: 18
                        y: 26
                        width: 264
                        height: 36
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
                    width: 300
                    height: 70
                    color: "#ffffff"
                    radius: 20
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    Text {
                        id: guestText
                        x: 114
                        y: 10
                        text: qsTr("Guest Login")
                        font.bold: true
                        horizontalAlignment: Text.AlignLeft
                        font.pixelSize: 12
                    }

                    TextArea {
                        id: textArea1
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

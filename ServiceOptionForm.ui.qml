import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Rectangle {
    id: item1
    width: 800
    height: 420
    color: "#23232f"
    property alias findDirectoryMouseArea: findDirectoryMouseArea
    property alias findDirectoryText: findDirectoryText
    property alias findHealthDirectoryRect: findHealthDirectoryRect
    property alias findHealthMouseArea: findHealthMouseArea
    property alias findHealthText: findHealthText
    property alias findHealthHeaderText: findHealthHeaderText
    property alias findHealthServicesRect: findHealthServicesRect
    property alias customServiceMouseArea: customServiceMouseArea
    property alias customServiceText: customServiceText
    property alias customServiceHeaderText: customServiceHeaderText
    property alias customServiceRect: customServiceRect
    property alias fullServiceMouseArea: fullServiceMouseArea
    property alias fullServiceText: fullServiceText
    property alias fullServiceHeaderText: fullServiceHeaderText
    property alias fullServiceRect: fullServiceRect
    property alias serviceHeaderText: serviceHeaderText
    property alias findDirectoryHeaderText: findDirectoryHeaderText

    Rectangle {
        id: serviceHeaderRect
        height: 60
        color: "#d2d3d1"
        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: serviceHeaderText
            x: 0
            y: 406
            color: "#0093e1"
            text: qsTr("PLEASE SELECT FROM THE AVAILABLE SERVICES TO CONTINUE")
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 20
        }
    }

    Rectangle {
        id: fullServiceRect
        x: 14
        y: 86
        width: 240
        height: 300
        radius: 30
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#47c936"
            }

            GradientStop {
                position: 1
                color: "#217c16"
            }
        }
        border.color: "#217c16"
        border.width: 0
        Layout.fillHeight: true
        Layout.fillWidth: true

        Text {
            id: fullServiceHeaderText
            y: 26
            color: "#ffffff"
            text: qsTr("FULL SCREENING")
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }

        Image {
            id: image2
            x: 56
            y: 164
            width: 131
            height: 114
            fillMode: Image.PreserveAspectFit
            source: "resources/icons/full.png"
        }

        Text {
            id: fullServiceText
            x: 16
            y: 55
            width: 210
            height: 145
            color: "#ffffff"
            text: qsTr("Select this service to access the full Suite of Screening Services that are available on the system")
            font.bold: true
            wrapMode: Text.WordWrap
            font.pixelSize: 12
        }

        MouseArea {
            id: fullServiceMouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: customServiceRect
        x: 275
        y: 86
        width: 240
        height: 300
        radius: 30
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#db9540"
            }

            GradientStop {
                position: 1
                color: "#c67b1d"
            }
        }
        border.width: 0
        border.color: "#000000"
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        Text {
            id: customServiceHeaderText
            y: 29
            color: "#ffffff"
            text: qsTr("CUSTOM SCREENING")
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }

        Image {
            id: image3
            x: 56
            y: 149
            width: 115
            height: 137
            fillMode: Image.PreserveAspectCrop
            source: "resources/icons/custom-list.png"
        }

        Text {
            id: customServiceText
            x: 16
            y: 55
            width: 216
            height: 154
            color: "#ffffff"
            text: qsTr("Select this option to access specific screening or measurements available on the system")
            font.bold: true
            wrapMode: Text.WordWrap
            font.pixelSize: 12
        }

        MouseArea {
            id: customServiceMouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: findHealthServicesRect
        x: 540
        y: 86
        width: 240
        height: 140
        radius: 30
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#3838ba"
            }

            GradientStop {
                position: 1
                color: "#1f20ae"
            }
        }
        border.width: 0
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

        Text {
            id: findHealthHeaderText
            y: 18
            color: "#ffffff"
            text: qsTr("FIND NEAR-BY HEALTH FACILITIES")
            font.bold: true
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }

        Image {
            id: image
            x: 173
            y: 69
            width: 59
            height: 63
            fillMode: Image.PreserveAspectFit
            source: "resources/icons/location.png"
        }

        Text {
            id: findHealthText
            x: 23
            y: 69
            width: 144
            height: 70
            color: "#ffffff"
            text: qsTr("Use this service to Find Nearby-By Health Facilities and Centres")
            font.bold: true
            wrapMode: Text.WordWrap
            font.pixelSize: 12
        }

        MouseArea {
            id: findHealthMouseArea
            visible: true
            anchors.fill: parent
        }
    }

    Rectangle {
        id: findHealthDirectoryRect
        x: 540
        y: 256
        width: 240
        height: 140
        radius: 30
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#d92626"
            }

            GradientStop {
                position: 1
                color: "#a52828"
            }
        }
        border.width: 0
        border.color: "#8dc26f"
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

        Text {
            id: findDirectoryHeaderText
            y: 21
            color: "#ffffff"
            text: qsTr("HEALTH SERVICES DIRECTORY")
            font.bold: true
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Image {
            id: image1
            x: 177
            y: 70
            width: 55
            height: 55
            fillMode: Image.PreserveAspectFit
            source: "resources/icons/directory.png"
        }

        Text {
            id: findDirectoryText
            x: 23
            y: 43
            width: 148
            height: 76
            color: "#ffffff"
            text: qsTr("This service displays the Contact Addresses and Phone Numbers of the Public Heath Services")
            font.bold: true
            wrapMode: Text.WordWrap
            font.pixelSize: 12
        }

        MouseArea {
            id: findDirectoryMouseArea
            anchors.fill: parent
        }
    }
}

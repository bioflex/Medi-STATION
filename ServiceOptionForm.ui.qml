import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 800
    height: 420
    property alias text5: text5

    ColumnLayout {
        id: columnLayout
        spacing: 0
        anchors.fill: parent

        Rectangle {
            id: rectangle3
            height: 100
            color: "#f0f0f2"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: text1
                x: 0
                y: 406
                text: qsTr("PLEASE SELECT FROM THE AVAILABLE SERVICES TO CONTINUE")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 320
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
            Layout.fillHeight: true
            spacing: 0

            Rectangle {
                id: rectangle2
                width: 200
                height: 200
                color: "#f0f0f2"
                Layout.fillHeight: true
                Layout.fillWidth: true

                Text {
                    id: text2
                    y: 26
                    text: qsTr("FULL SCREENING")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }

                TextArea {
                    id: textArea
                    y: 80
                    width: 230
                    height: 120
                    text: qsTr("Select this service to access the full Suite of Screening Services that are available on the system")
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Rectangle {
                    id: rectangle6
                    y: 229
                    width: 230
                    height: 70
                    color: "#ffffff"
                    radius: 30
                    border.color: "#0093e1"
                    border.width: 3
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        id: text6
                        text: qsTr("START")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                    }
                }
            }

            Rectangle {
                id: rectangle1
                width: 200
                height: 200
                color: "#f0f0f2"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                Text {
                    id: text3
                    y: 29
                    text: qsTr("CUSTOM SCREENING")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }

                TextArea {
                    id: textArea1
                    y: 80
                    width: 230
                    height: 120
                    text: qsTr("Select this option to access specific screening or measurements available on the system")
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Rectangle {
                    id: rectangle7
                    x: -233
                    y: 229
                    width: 230
                    height: 70
                    color: "#ffffff"
                    radius: 30
                    border.width: 3
                    border.color: "#0093e1"
                    Text {
                        id: text7
                        text: qsTr("START")
                        font.pixelSize: 12
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }

                    MouseArea {
                        id: mouseArea1
                        anchors.fill: parent
                    }
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: rectangle
                width: 200
                height: 200
                color: "#ffffff"
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                ColumnLayout {
                    id: columnLayout1
                    spacing: 0
                    anchors.fill: parent

                    Rectangle {
                        id: rectangle4
                        width: 200
                        height: 200
                        color: "#f0f0f2"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                        Text {
                            id: text4
                            y: 18
                            text: qsTr("FIND NEAR-BY HEALTH FACILITIES")
                            anchors.horizontalCenterOffset: 0
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.pixelSize: 12
                        }

                        Rectangle {
                            id: rectangle8
                            x: -499
                            y: 82
                            width: 200
                            height: 70
                            color: "#ffffff"
                            radius: 30
                            border.width: 3
                            border.color: "#0093e1"
                            Text {
                                id: text8
                                text: qsTr("FIND")
                                font.pixelSize: 12
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                            }

                            MouseArea {
                                id: mouseArea2
                                anchors.fill: parent
                            }
                            anchors.horizontalCenterOffset: 0
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    Rectangle {
                        id: rectangle5
                        width: 200
                        height: 200
                        color: "#f0f0f2"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

                        Text {
                            id: text5
                            y: 34
                            text: qsTr("HEALTH SERVICES DIRECTORY")
                            anchors.horizontalCenterOffset: 0
                            anchors.horizontalCenter: parent.horizontalCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 12
                        }

                        Rectangle {
                            id: rectangle9
                            x: 34
                            y: 71
                            width: 200
                            height: 70
                            color: "#ffffff"
                            radius: 30
                            border.color: "#0093e1"
                            border.width: 3
                            Text {
                                id: text9
                                text: qsTr("SEARCH")
                                font.pixelSize: 12
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                            }

                            MouseArea {
                                id: mouseArea3
                                anchors.fill: parent
                            }
                            anchors.horizontalCenterOffset: 0
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
            }
        }
    }
}

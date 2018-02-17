import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    width: 620
    height: 420
    property alias nextMouseArea: nextMouseArea

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: rectangle
            width: 200
            height: 100
            color: "#ffffff"
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

            Text {
                id: text1
                y: 15
                text: "PLEASE STAND ON THE WEIGHT SCALE TO TAKE MEASUREMENT"
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }

            TextArea {
                id: textArea
                x: 0
                y: 38
                width: 512
                height: 46
                text: qsTr("NB: For accurate weight measurement, ensure that you are not carrying and additional weight")
                placeholderText: ""
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle {
            id: rectangle1
            width: 200
            height: 200
            color: "#ffffff"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

            RowLayout {
                id: rowLayout
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    id: rectangle2
                    width: 200
                    height: 200
                    color: "#ffffff"
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Image {
                        id: image
                        fillMode: Image.PreserveAspectFit
                        anchors.fill: parent
                        source: "resources/images/dudeonscale.jpg"
                    }
                }

                Rectangle {
                    id: rectangle3
                    width: 200
                    height: 200
                    color: "#ffffff"
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Rectangle {
                        id: rectangle4
                        width: 200
                        height: 200
                        color: "#ffffff"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter

                        Text {
                            id: text2
                            text: qsTr("PROCEED")
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 12
                        }

                        MouseArea {
                            id: nextMouseArea
                            anchors.fill: parent
                        }
                    }
                }
            }
        }
    }
}

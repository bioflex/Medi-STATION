import QtQuick 2.4

Item {
    id: rootItem
    width: 800
    height: 420
    property alias listView: listView
    property alias headerRect: headerRect

    Rectangle {
        id: headerRect
        width: 800
        height: 60
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
    }

    ListView {
        id: listView
        x: 0
        y: 60
        width: 800
        height: 360
        spacing: 5
        layoutDirection: Qt.LeftToRight
        orientation: ListView.Vertical
        boundsBehavior: Flickable.StopAtBounds
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                spacing: 10
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
            }
        }
    }
}

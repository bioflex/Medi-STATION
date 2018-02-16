import QtQuick 2.4

Item {
    width: 800
    height: 20

    Rectangle {
        id: bottomRect
        height: 5
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#0b1519"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        anchors.fill: parent
    }
}

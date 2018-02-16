import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    width: 620
    height: 420

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout
            anchors.fill: parent

            Text {
                id: text1
                text: "PLEASE STAND ON THE WEIGHT PAD TO  MEASURE WEIGHT"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.pixelSize: 12
            }

            TextArea {
                id: textArea
                text: qsTr("NB: CARRYING ADDITIONAL WEIGHT MAY AFFECT THE ACCURACY OF THE MEASUREMENT")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }
    }
}

import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 480
    title: qsTr("Medi-STATION")

    header: TopPanel
    {

    }

    StackLayout {
        id: mainStack
        anchors.fill: parent

        WelcomePage
        {
            id: welcomeId
            userLoginMouseArea.onClicked: mainStack.currentIndex = 1
        }

        ScreeningMain
        {
            id: screenMainId


        }

    }

    footer: TabBar
    {  
        BottomPanel
        {

        }
    }
}

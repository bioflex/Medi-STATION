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
        homeMouseArea.onClicked: mainStack.currentIndex = 0
    }

    StackLayout {
        id: mainStack
        anchors.fill: parent

        WelcomePage
        {
            id: welcomeId
            userLoginMouseArea.onClicked: mainStack.currentIndex = 1
            guestMouseArea.onClicked: mainStack.currentIndex = 2
        }

        Login
        {
            id: loginId
            loginMouseArea.onClicked: mainStack.currentIndex = 2
        }

        ServiceOption
        {
            id: serviceId
            fullStartMouseArea.onClicked: mainStack.currentIndex = 3
        }

        ScreeningMain
        {
            id: screenMainId

            //detailStackLayout.currentIndex: 0s
            weightScreen.nextMouseArea.onClicked: detailStackLayout.currentIndex++
        }

    }

    footer: TabBar
    {  
        BottomPanel
        {

        }
    }
}

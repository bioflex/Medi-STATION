import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    objectName: "appWindow"
    width: 800
    height: 480
    title: qsTr("Medi-STATION")

    // SLOT for Changeing Date and Time
    function setDate(text)
    {
        topPanel.dateTimeText.text = text
    }

    // SIGNALS
    signal startPulseSensor()           // start pulse sensor
    signal startHeightSensor()          // start height sensor

    // SLOTS
    function setPulseValue(text) {screenMainId.pulseScreen.pulseValueText.text = text}      // Change pulse value
    function setHeightValue(text) {screenMainId.heightScreen.heightValueText.text = text}   // Change height value

    header: TopPanel
    {
        id: topPanel
        objectName: "headerPanel"

        homeMouseArea.onClicked: mainStack.currentIndex = 0
        helpMouseArea.onClicked: screenMainId.detailStackLayout.currentIndex = 0
        quitMouseArea.onClicked: Qt.quit()
    }

    StackLayout
    {
        id: mainStack
        objectName: "mainStack"
        anchors.fill: parent

        WelcomePage
        {
            id: welcomeId
            objectName: "welcomePage"
            userLoginMouseArea.onClicked: mainStack.currentIndex = 1
            guestMouseArea.onClicked: mainStack.currentIndex = 2
        }

        Login
        {
            id: loginId
            objectName: "loginPage"
            loginMouseArea.onClicked: mainStack.currentIndex = 2
        }

        ServiceOption
        {
            id: serviceId
            objectName: "serviceOptionPage"
            fullServiceMouseArea.onClicked: mainStack.currentIndex = 4
            customServiceMouseArea.onClicked: mainStack.currentIndex = 3
            findHealthMouseArea.onClicked: mainStack.currentIndex = 6
            findDirectoryMouseArea.onClicked: mainStack.currentIndex = 7;
        }

        CustomService
        {
            id: customServiceId
            objectName: "customeServicePage"
            weightSelectMouseArea.onClicked: {mainStack.currentIndex =  4; screenMainId.detailStackLayout.currentIndex = 0}
            heightSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 1}
            tempSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 2}
            pulseSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 3}
            bpSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 4}

        }

        ScreeningMain
        {
            id: screenMainId
            objectName: "screeningMainPage"
            weightScreen.weightContinueMouseArea.onClicked: detailStackLayout.currentIndex++
            heightScreen.heightContinueMouseArea.onClicked: detailStackLayout.currentIndex++
            temperatureScreen.tempContinueMouseArea.onClicked: detailStackLayout.currentIndex++
            pulseScreen.pulseContinueMouseArea.onClicked: detailStackLayout.currentIndex++
            bloodPressureScreen.bloodPreMouseArea.onClicked: mainStack.currentIndex = 5

            pulseScreen.pulseStartMouseArea.onClicked: {startPulseSensor()}
            heightScreen.heightStartMouseArea.onClicked: {startHeightSensor()}
        }

        ResultScreen
        {
            id: resultId
            objectName: "resultPage"
        }

        NearByScreen
        {
            id: nearbyId
        }

        DirectoryList
        {
            id: directoryId
        }

    }

    footer: TabBar
    {  
        BottomPanel
        {

        }
    }
}

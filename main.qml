import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import "DataService.js" as Services

ApplicationWindow {
    visible: true
    objectName: "appWindow"
    width: 800
    height: 480
    title: qsTr("Medi-STATION")

    // Globals
    property int user_id: 0
    property string user_token: ""

    property string user_weight: ""
    property string user_height: ""
    property string user_bmi: ""
    property string user_temperature: ""
    property string user_bloodpressure: ""
    property string user_pulse: ""

    property bool isCustomService: false
    property bool isBmi: false

    // Initialize
    function initialize()
    {
        user_id = 0;
        user_token = "";


        loginId.userNumberTextField.text = "";
        loginId.userPinTextField.text = "";
        loginId.userLoginErrorText.text = "";


        user_weight = "-";
        user_height = "-";
        user_bmi = "-";
        user_temperature = "-";
        user_pulse = "";
        user_bloodpressure = "-";

        screenMainId.weightScreen.weightStartRect.visible = true;
        screenMainId.heightScreen.heightStartRect.visible = true;
        screenMainId.temperatureScreen.tempStartRect.visible = true;
        screenMainId.pulseScreen.pulseStartRect.visible = true;
        screenMainId.bloodPressureScreen.bpStartRect.visible = true;

        screenMainId.weightScreen.weightValueText.text = "-";
        screenMainId.heightScreen.heightValueText.text = "-";
        screenMainId.temperatureScreen.tempValueText.text = "-"
        screenMainId.pulseScreen.pulseValueText.text = "-";
        screenMainId.bloodPressureScreen.bloodpressureValueText.text = "-";

        resultId.resultsWeightRect.visible = true;
        resultId.resultsWeightText.text = "";
        resultId.resultsHeightRect.visible = true;
        resultId.resultsHeightText.text = "";
        resultId.resultsPulseRect.visible = true;
        resultId.resultsPulseText.text = "";
        resultId.resultsBmiRect.visible = true;
        resultId.resultsBmiText.text = "";
        resultId.resultsTempRect.visible = true;
        resultId.resultsTempText.text = "";
        resultId.resultsBpRect.visible = true;
        resultId.resultsBpText.text = "";

        isCustomService = false;
        isBmi = false;

        mainStack.currentIndex = 0;
        screenMainId.detailStackLayout.currentIndex = 0;
    }

    // SLOT for Changeing Date and Time
    function setDate(text)
    {
        topPanel.dateTimeText.text = text
    }

    // SIGNALS
    signal startPulseSensor()           // start pulse sensor
    signal startHeightSensor()          // start height sensor
    signal startTempSensor()            // start temperature sensor

    // SLOTS
    function setPulseValue(text) {screenMainId.pulseScreen.pulseValueText.text = text; resultId.resultsPulseText.text = text + " BPM"}      // Change pulse value
    function setHeightValue(text) {screenMainId.heightScreen.heightValueText.text = text; resultId.resultsHeightText.text = text + " CM"}   // Change height value
    function setTempValue(text) {screenMainId.temperatureScreen.tempValueText.text = text; resultId.resultsTempText.text = text + " C"}  // change temperature value

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
            loginMouseArea.onClicked:
            {

                if(userNumberTextField.text.length < 10 || userPinTextField.text.length < 4)
                {
                    userLoginErrorText.text = "Invalid Credentials. Verify and try again"
                }
                else
                {
                    var user_detail = {username: userNumberTextField.text, password: userPinTextField.text}

                    Services.post_login( function(resp) {
                        print('handle post login resp: ' + JSON.stringify(resp));

                        if (typeof(resp) == 'string')
                            userLoginErrorText.text = "Login Error: Verfy Credentials and try again"
                        else
                        {
                            user_id = resp.user_id
                            user_token = resp.token
                            userLoginErrorText.text = ""

                            mainStack.currentIndex = 2
                        }
                    }, user_detail);
                }
            }
        }

        ServiceOption
        {
            id: serviceId
            objectName: "serviceOptionPage"
            fullServiceMouseArea.onClicked: mainStack.currentIndex = 4
            customServiceMouseArea.onClicked: {mainStack.currentIndex = 3; isCustomService = true}
            findHealthMouseArea.onClicked: mainStack.currentIndex = 6
            findDirectoryMouseArea.onClicked: mainStack.currentIndex = 7;
        }

        CustomService
        {
            id: customServiceId
            objectName: "customeServicePage"

            weightSelectMouseArea.onClicked: {mainStack.currentIndex =  4; screenMainId.detailStackLayout.currentIndex = 0}
            heightSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 1}
            bmiSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 0; isBmi = true}
            tempSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 2}
            pulseSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 3}
            bpSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 4}

        }

        ScreeningMain
        {
            id: screenMainId
            objectName: "screeningMainPage"

            weightScreen.weightContinueMouseArea.onClicked:
            {
                if(isCustomService)
                {
                    if(isBmi)
                        detailStackLayout.currentIndex++;
                    else
                        mainStack.currentIndex = 5
                }
                else
                    detailStackLayout.currentIndex++
            }

            heightScreen.heightContinueMouseArea.onClicked: {if(isCustomService)mainStack.currentIndex = 5; else detailStackLayout.currentIndex++}
            temperatureScreen.tempContinueMouseArea.onClicked: {if(isCustomService)mainStack.currentIndex = 5; else detailStackLayout.currentIndex++}
            pulseScreen.pulseContinueMouseArea.onClicked: {if(isCustomService)mainStack.currentIndex = 5; else detailStackLayout.currentIndex++}
            bloodPressureScreen.bloodPreMouseArea.onClicked: mainStack.currentIndex = 5

            pulseScreen.pulseStartMouseArea.onClicked: {startPulseSensor(); pulseScreen.pulseStartRect.visible = false;}
            heightScreen.heightStartMouseArea.onClicked: {startHeightSensor()}
            temperatureScreen.tempStartMouseArea.onClicked: {startTempSensor(); temperatureScreen.tempStartRect.visible = false}
        }

        ResultScreen
        {
            id: resultId
            objectName: "resultPage"

            resultsReturnMouseArea.onClicked:
            {
                if(user_token != "")
                {
                    user_weight = "" + Math.floor(Math.random() * (100 - 40)) + 40//screenMainId.weightScreen.weightValueText.text;
                    user_height = "" + Math.floor(Math.random() * (170 - 30)) + 30//screenMainId.heightScreen.heightValueText.text;
                    user_bmi = "" + Math.floor(Math.random() * (35 - 7)) + 7;
                    user_temperature = "" + Math.floor(Math.random() * (35 - 30)) + 30//screenMainId.temperatureScreen.tempValueText.text;
                    user_pulse = "" + Math.floor(Math.random() * (100 - 45)) + 45//screenMainId.pulseScreen.pulseValueText.text;
                    user_bloodpressure = "" + Math.floor(Math.random() * (130 - 70)) + 70//screenMainId.bloodPressureScreen.bloodpressureValueText.text;

                    Services.post_data( function(resp) {
                        print('handle post data resp: ' + JSON.stringify(resp));

                    }, {foo: "", bar: ""});
                }

                initialize();
            }

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

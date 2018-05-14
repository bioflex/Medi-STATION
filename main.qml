import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import "DataService.js" as Services
import "MockService.js" as Mock

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

    property int offset: 200

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
        user_pulse = "-";
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

        resultId.resultsWeightText.text = "- KG";
        resultId.resultsHeightText.text = "- CM";
        resultId.resultsPulseText.text = "- BPM";
        resultId.resultsBmiText.text = "-";
        resultId.resultsTempText.text = "- &#176; C";
        resultId.resultsBpText.text = "- mmHg";

        isCustomService = false;
        isBmi = false;

        mainStack.currentIndex = 0;
        screenMainId.detailStackLayout.currentIndex = 0;

        topPanel.backRect.visible = false

        screenMainId.weightScreen.weightStatusImage.source = 'resources/icons/statusred.png'
        screenMainId.heightScreen.heightStatusImage.source = 'resources/icons/statusred.png'
        screenMainId.temperatureScreen.tempStatusImage.source = 'resources/icons/statusred.png'
        screenMainId.pulseScreen.pulseStatusImage.source = 'resources/icons/statusred.png'
        screenMainId.bloodPressureScreen.bloodpressureStatusImage.source = 'resources/icons/statusred.png'

        screenMainId.weightScreen.weightContinueRect.visible = false
        screenMainId.heightScreen.heightContinueRect.visible = false
        screenMainId.temperatureScreen.tempContinueRect.visible = false
        screenMainId.pulseScreen.pulseContinueRect.visible = false
        screenMainId.bloodPressureScreen.bloodpressureContinueRect.visible = false
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
    function setHeightValue(text) {screenMainId.heightScreen.heightValueText.text = heightOffset(text); resultId.resultsHeightText.text = heightOffset(text) + " CM"}   // Change height value
    function setTempValue(text) {screenMainId.temperatureScreen.tempValueText.text = text; resultId.resultsTempText.text = text + " &#176; C"}  // change temperature value

    function heightReadingFinished(){screenMainId.heightScreen.heightStatusImage.source = 'resources/icons/statusgreen.png' ;screenMainId.heightScreen.heightContinueRect.visible = true}
    function pulseReadingFinished(){screenMainId.pulseScreen.pulseStatusImage.source = 'resources/icons/statusgreen.png'; screenMainId.pulseScreen.pulseContinueRect.visible = true}
    function tempReadingFinished(){screenMainId.temperatureScreen.tempStatusImage.source = 'resources/icons/statusgreen.png'; screenMainId.temperatureScreen.tempContinueRect.visible = true}

    // Mock Functions
    function setWeightValue() {screenMainId.weightScreen.weightValueText.text = Mock.startWeightSensor(); resultId.resultsWeightText.text = screenMainId.weightScreen.weightValueText.text + " KG"}
    function setBloodpressureValue() {screenMainId.bloodPressureScreen.bloodpressureValueText.text = Mock.startBloodpressureSensor(); resultId.resultsBpText.text = screenMainId.bloodPressureScreen.bloodpressureValueText.text + " mmHg"}
    function setBmiValue(weight, height) {return (weight / Math.pow(height / 100, 2)).toFixed(2)}

    // Functions
    function heightOffset(height){return (height > 0) ? (offset - height) : 0}

    header: TopPanel
    {
        id: topPanel
        objectName: "headerPanel"

        homeMouseArea.onClicked: initialize()//mainStack.currentIndex = 0
        backMouseArea.onClicked: {mainStack.currentIndex = 2; backRect.visible = false}
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
            fullServiceMouseArea.onClicked: {mainStack.currentIndex = 4}
            customServiceMouseArea.onClicked: {mainStack.currentIndex = 3;topPanel.backRect.visible = true; isCustomService = true}
            findHealthMouseArea.onClicked: {mainStack.currentIndex = 6; topPanel.backRect.visible = true;}
            findDirectoryMouseArea.onClicked: {mainStack.currentIndex = 7; topPanel.backRect.visible = true;}
        }

        CustomService
        {
            id: customServiceId
            objectName: "customeServicePage"

            weightSelectMouseArea.onClicked: {mainStack.currentIndex =  4; screenMainId.detailStackLayout.currentIndex = 0; topPanel.backRect.visible = false;}
            heightSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 1; topPanel.backRect.visible = false;}
            bmiSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 0; isBmi = true; topPanel.backRect.visible = false;}
            tempSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 2; topPanel.backRect.visible = false;}
            pulseSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 3; topPanel.backRect.visible = false;}
            bpSelectMouseArea.onClicked: {mainStack.currentIndex = 4; screenMainId.detailStackLayout.currentIndex = 4; topPanel.backRect.visible = false;}

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

            heightScreen.heightContinueMouseArea.onClicked:
            {
                if(isCustomService)
                {
                    if(isBmi)
                    resultId.resultsBmiText.text = setBmiValue(parseInt(screenMainId.weightScreen.weightValueText.text), parseInt(screenMainId.heightScreen.heightValueText.text))

                    mainStack.currentIndex = 5
                }
                else
                {
                    resultId.resultsBmiText.text = setBmiValue(parseInt(screenMainId.weightScreen.weightValueText.text), parseInt(screenMainId.heightScreen.heightValueText.text))
                    detailStackLayout.currentIndex++
                }
            }

            temperatureScreen.tempContinueMouseArea.onClicked: {if(isCustomService)mainStack.currentIndex = 5; else detailStackLayout.currentIndex++}
            pulseScreen.pulseContinueMouseArea.onClicked: {if(isCustomService)mainStack.currentIndex = 5; else detailStackLayout.currentIndex++}

            bloodPressureScreen.bloodpressureContinueMouseArea.onClicked:
            {

                mainStack.currentIndex = 5
            }

            weightScreen.weightStartMouseArea.onClicked:
            {
                setWeightValue();
                weightScreen.weightStartRect.visible = false;
                weightScreen.weightContinueRect.visible = true;
                weightScreen.weightStatusImage.source = 'resources/icons/statusgreen.png'
            }
            heightScreen.heightStartMouseArea.onClicked: {startHeightSensor(); heightScreen.heightStartRect.visible = false}
            temperatureScreen.tempStartMouseArea.onClicked: {startTempSensor(); temperatureScreen.tempStartRect.visible = false}
            pulseScreen.pulseStartMouseArea.onClicked: {startPulseSensor(); pulseScreen.pulseStartRect.visible = false;}

            bloodPressureScreen.bpStartMouseArea.onClicked:
            {
                setBloodpressureValue();
                bloodPressureScreen.bpStartRect.visible = false;
                bloodPressureScreen.bloodpressureContinueRect.visible = true
                bloodPressureScreen.bloodpressureStatusImage.source = 'resources/icons/statusgreen.png'
            }
        }

        ResultScreen
        {
            id: resultId
            objectName: "resultPage"

            resultsReturnMouseArea.onClicked:
            {
                if(user_token != "")
                {
                    user_weight = screenMainId.weightScreen.weightValueText.text;
                    user_height = screenMainId.heightScreen.heightValueText.text;
                    user_bmi = resultId.resultsBmiText.text
                    user_temperature = screenMainId.temperatureScreen.tempValueText.text;
                    user_pulse = screenMainId.pulseScreen.pulseValueText.text;
                    user_bloodpressure = screenMainId.bloodPressureScreen.bloodpressureValueText.text;

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

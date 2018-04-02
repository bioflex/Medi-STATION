import QtQuick 2.4

LoginForm {

    property color buttonBaseColor: "white"
    property  color  buttonPressedColor: "#a9abad"
    property color keyBaseColor: "#b4b4b4"
    property color keyPressedColor: "#615f64"

    loginRect.color: loginMouseArea.pressed? buttonPressedColor : buttonBaseColor
    keyOneRect.color: keyOneMouseArea.pressed? keyPressedColor : keyBaseColor
    keyTwoRect.color: keyTwoMouseArea.pressed? keyPressedColor : keyBaseColor
    keyThreeRect.color: keyThreeMouseArea.pressed? keyPressedColor : keyBaseColor
    keyFourRect.color: keyFourMouseArea.pressed? keyPressedColor : keyBaseColor
    keyFiveRect.color: keyFiveMouseArea.pressed? keyPressedColor : keyBaseColor
    keySixRect.color: keySixMouseArea.pressed? keyPressedColor : keyBaseColor
    keySevenRect.color: keySevenMouseArea.pressed? keyPressedColor : keyBaseColor
    keyEightRect.color: keyEightMouseArea.pressed? keyPressedColor : keyBaseColor
    keyNineRect.color: keyNineMouseArea.pressed? keyPressedColor : keyBaseColor
    keyZeroRect.color: keyZeroMouseArea.pressed? keyPressedColor : keyBaseColor
    keyBackRect.color: keyBackMouseArea.pressed? keyPressedColor : keyBaseColor

    FontLoader {id: rob; source: "resources/fonts/Roboto-Bold.ttf"}

    loginText.font.family: rob.name
    loginBannerText.font.family: rob.name
    userNumberTextField.font.family: rob.name
    userPinTextField.font.family: rob.name

    keyBackMouseArea.onPressed: {
        if (userNumberTextField.activeFocus && userNumberTextField.length > 0)
            userNumberTextField.remove(userNumberTextField.cursorPosition - 1, userNumberTextField.cursorPosition)
        else if (userPinTextField.activeFocus && userPinTextField.length > 0)
            userPinTextField.remove(userPinTextField.cursorPosition -1, userPinTextField.cursorPosition)
    }
    keyZeroMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "0")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "0")
    }
    keyNineMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "9")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "9")
    }
    keyEightMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "8")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "8")
    }
    keySevenMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "7")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "7")
    }
    keySixMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "6")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "6")
    }
    keyFiveMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "5")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "5")
    }
    keyFourMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "4")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "4")
    }
    keyThreeMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "3")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "3")
    }
    keyTwoMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "2")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "2")
    }
    keyOneMouseArea.onPressed: {
        if (userNumberTextField.activeFocus)
            userNumberTextField.insert(userNumberTextField.cursorPosition, "1")
        else if (userPinTextField.activeFocus)
            userPinTextField.insert(userPinTextField.cursorPosition, "1")
    }

    userNumberTextField.validator: IntValidator{}
    userNumberTextField.maximumLength: 10

    userPinTextField.validator: IntValidator {}
    userPinTextField.maximumLength: 4
    userPinTextField.echoMode: TextInput.Password

}

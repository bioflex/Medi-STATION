import QtQuick 2.4

WelcomePageForm
{
    property color buttonBaseColor: "white"
    property  color  buttonPressedColor: "#a9abad"

    userLoginMouseArea.onPressed: {
    }


    userLoginRect.color: userLoginMouseArea.pressed ? buttonPressedColor : buttonBaseColor
    guestRect.color: guestMouseArea.pressed ? buttonPressedColor : buttonBaseColor
    nhisLoginRect.color: nhisMouseArea.pressed ? buttonPressedColor : buttonBaseColor
}

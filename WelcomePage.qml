import QtQuick 2.4

WelcomePageForm
{
    property color buttonBaseColor: "white"
    property  color  buttonPressedColor: "#a9abad"

    FontLoader {id: aleo; source: "resources/fonts/aleo-bold-webfont.ttf"}
    FontLoader {id: rob; source: "resources/fonts/Roboto-Bold.ttf"}

    wWelcomeText.font.family: aleo.name

    wAcessText.font.family: rob.name
    userLText.font.family: rob.name
    userLTextArea.font.family: rob.name

    nhisLText.font.family: rob.name
    nhisLTextArea.font.family: rob.name

    guestText.font.family: rob.name
    guestLTextArea.font.family: rob.name

    userLoginRect.color: userLoginMouseArea.pressed ? buttonPressedColor : buttonBaseColor
    guestRect.color: guestMouseArea.pressed ? buttonPressedColor : buttonBaseColor
    nhisLoginRect.color: nhisMouseArea.pressed ? buttonPressedColor : buttonBaseColor
}

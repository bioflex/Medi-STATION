import QtQuick 2.4


TopPanelForm
{
    FontLoader {id: roboto; source: "resources/fonts/Roboto-Bold.ttf"}

    dateTimeText.font.family: roboto.name
    statusText.font.family: roboto.name

    dateTimeText.objectName: "dateTimeText"

    // this function is our QML slot
//    function setNewDate(text)
//    {
//        dateTimeText.text = text;
//    }
}

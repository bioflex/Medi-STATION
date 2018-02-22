import QtQuick 2.4


TopPanelForm
{
    FontLoader {id: roboto; source: "resources/fonts/Roboto-Bold.ttf"}

    dateTimeText.font.family: roboto.name
    statusText.font.family: roboto.name
}

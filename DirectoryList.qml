import QtQuick 2.4

DirectoryListForm
{
    Component
    {
        id: contactDelegate
        Item
        {
            width: 800; height: 50
            Column
            {
                Text { text: '<b>Name:</b> ' + name }
                Text { text: '<b>Number:</b> ' + number }
            }
        }
    }

    listView.model: ContactModel {}
    listView.delegate: contactDelegate
    listView.highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
    listView.focus: true
}

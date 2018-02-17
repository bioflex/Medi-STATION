import QtQuick 2.4

ScreeningMainForm
{
    property color unselectColor: "#22272a"
    property color selectColor: "#d62831"

    detailStackLayout.onCurrentIndexChanged:
    {
        switch(detailStackLayout.currentIndex)
        {
            case 0:
                weightRect.color = selectColor
                heightRect.color = unselectColor
                tempRect.color = unselectColor
                pulseRect.color = unselectColor
                bpRect.color = unselectColor
                break

            case 1:
                weightRect.color = unselectColor
                heightRect.color = selectColor
                tempRect.color = unselectColor
                pulseRect.color = unselectColor
                bpRect.color = unselectColor
                break

            case 2:
                weightRect.color = unselectColor
                heightRect.color = unselectColor
                tempRect.color = selectColor
                pulseRect.color = unselectColor
                bpRect.color = unselectColor
                break

            case 3:
                weightRect.color = unselectColor
                heightRect.color = unselectColor
                tempRect.color = unselectColor
                pulseRect.color = selectColor
                bpRect.color = unselectColor
                break

            case 4:
                weightRect.color = unselectColor
                heightRect.color = unselectColor
                tempRect.color = unselectColor
                pulseRect.color = unselectColor
                bpRect.color = selectColor
                break

            default:
                break;
        }
    }

}

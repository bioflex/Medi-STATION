#include "datetimer.h"
#include <QtCore>

DateTimer::DateTimer()
{
    timer = new QTimer(this);
    currentDateTime = new QDateTime();

    connect(timer, SIGNAL(timeout()), this, SLOT(NewDateTime()));

    timer->start(1000);
}

void DateTimer::NewDateTime()
{
    currentDateTime = new QDateTime(QDateTime::currentDateTime());
    emit DateTimeString(currentDateTime->toString("dddd, d MMMM yyyy hh:mm:ss"));
}


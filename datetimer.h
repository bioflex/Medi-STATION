#ifndef DATETIMER_H
#define DATETIMER_H

#include <QtCore>

class DateTimer : public QObject
{
    Q_OBJECT
    QTimer *timer;
    QDateTime *currentDateTime;


public:
    DateTimer();

public slots:
    void NewDateTime();

signals:
        void DateTimeString(QVariant text);
};

#endif // DATETIMER_H

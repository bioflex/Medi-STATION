#ifndef PULSESENSOR_H
#define PULSESENSOR_H

#include <QtCore>

#include <wiringPi.h>
#include <wiringSerial.h>

class PulseSensor : public QThread
{
    Q_OBJECT

    void run() override
    {
        int fd;

        if ((fd = serialOpen ("/dev/ttyACM0", 9600)) < 0)
        {
            qDebug() << "Undable to open serial device";
        }

        serialPutchar (fd, 'C');

        //QThread::msleep(60);
        //delay(60);

        while (serialDataAvail(fd))
        {
            int value = serialGetchar(fd);

            if (value > 90)
                value = 90;

            qDebug() << value;
            emit FinishedPulseReading(value);
            //qDebug() << serialGetchar(fd);

            //QThread::msleep(200);
            delay(250);
        }

        qDebug() << "Reading done...";

        emit FinalReadingFinished();

        serialClose(fd);
    }

public:
    void Initialize();

public slots:
    void StartPulseReading();

signals:
    void FinishedPulseReading(QVariant text);
    void FinalReadingFinished();
};

#endif // PULSESENSOR_H

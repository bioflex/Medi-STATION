#ifndef HEIGHTSENSOR_H
#define HEIGHTSENSOR_H

#include <QtCore>

#include <wiringPi.h>
#include <wiringSerial.h>

class HeightSensor : public QThread
{
    Q_OBJECT

    void run() override
    {
        int fd;

        if ((fd = serialOpen ("/dev/ttyACM0", 9600)) < 0)
        {
            qDebug() << "Undable to open serial device";
        }

        serialPutchar (fd, 'A');

        //QThread::msleep(60);
        delay(60);

        while (serialDataAvail(fd))
        {
            int value = serialGetchar(fd);

            qDebug() << value;
            emit FinishedHeightReading(value);
            //qDebug() << serialGetchar(fd);

            //QThread::msleep(200);
            delay(200);
        }

        qDebug() << "Reading done...";

        emit FinalReadingFinished();

        serialClose(fd);
    }

public:
    void Initialize();

public slots:
    void StartHeightReading();

signals:
    void FinishedHeightReading(QVariant text);
    void FinalReadingFinished();
};

#endif // HEIGHTSENSOR_H

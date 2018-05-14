#ifndef TEMPERATURESENSOR_H
#define TEMPERATURESENSOR_H

#include <QtCore>

#include <wiringPi.h>
#include <wiringSerial.h>

class TemperatureSensor : public QThread
{
    Q_OBJECT

    void run() override
    {
        int fd;

        if ((fd = serialOpen ("/dev/ttyACM0", 9600)) < 0)
        {
            qDebug() << "Undable to open serial device";
        }

        serialPutchar (fd, 'B');

        delay(60);

        while (serialDataAvail(fd))
        {
            double value = serialGetchar(fd);

            qDebug() << "Value: " << value;
            qDebug() << "Result: " << QString::number(value/ 1.00, 'g', 2);
            emit FinishedTemperatureReading(QString::number(value/ 1.00, 'g', 2));

            delay(600);
        }

        qDebug() << "Reading done...";

        emit FinalReadingFinished();

        serialClose(fd);
    }

public:
    void Initialize();

public slots:
    void StartTemperatureReading();

signals:
    void FinishedTemperatureReading(QVariant text);
    void FinalReadingFinished();
};

#endif // TEMPERATURESENSOR_H

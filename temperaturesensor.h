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
            int value = serialGetchar(fd);

            qDebug() << "Value: " << value;
            qDebug() << "Result: " << QString::number(value/ 10.0, 'g', 5);
            emit FinishedTemperatureReading(QString::number(value/ 10.0, 'g', 5));

            delay(1200);
        }

        serialClose(fd);
    }

public:
    void Initialize();

public slots:
    void StartTemperatureReading();

signals:
    void FinishedTemperatureReading(QVariant text);
};

#endif // TEMPERATURESENSOR_H

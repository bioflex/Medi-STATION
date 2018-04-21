#include "temperaturesensor.h"

void TemperatureSensor::StartTemperatureReading()
{
    TemperatureSensor *workerThread = this;

    workerThread->start();
}

void TemperatureSensor::Initialize()
{
    int fd;

    if ((fd = serialOpen ("/dev/ttyACM0", 9600)) < 0)
    {
        qDebug() << "Undable to open serial device";
    }

    if (wiringPiSetup() == -1)
    {
        qDebug() << "Unable to start wiringPi";
    }

    serialPutchar (fd, 'B');

    QThread::msleep(60);

    while (serialDataAvail(fd))
    {
        int value = serialGetchar(fd);

        qDebug() << value;
        emit FinishedTemperatureReading(value);

        QThread::msleep(300);
    }

    serialClose(fd);
}

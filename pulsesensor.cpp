#include "pulsesensor.h"

void PulseSensor::StartPulseReading()
{
    PulseSensor *workerThread = this;

    workerThread->start();
}

void PulseSensor::Initialize()
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

    serialPutchar (fd, 'A');

    QThread::msleep(60);

    while (serialDataAvail(fd))
    {
        int value = serialGetchar(fd);

        qDebug() << value;
        emit FinishedPulseReading(value);

        QThread::msleep(300);
    }

    qDebug() << "Reading done...";

    serialClose(fd);
}

#include "heightsensor.h"

void HeightSensor::StartHeightReading()
{
    HeightSensor *workerThread = this;

    workerThread->start();
}

void HeightSensor::Initialize()
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
        emit FinishedHeightReading(value);

        QThread::msleep(180);
    }

    serialClose(fd);
}

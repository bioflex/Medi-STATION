#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

#include <wiringPi.h>

#include "datetimer.h"
#include "heightsensor.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

//    int fd;

//    if ((fd = serialOpen ("/dev/ttyACM0", 9600)) < 0)
//    {
//        qDebug() << "Undable to open serial device";
//        return -1;
//    }

    if (wiringPiSetup() == -1)
    {
        qDebug() << "Unable to start wiringPi";
        return -1;
    }

    // Step 1: get access to the root object
    QObject *rootObject = engine.rootObjects().first();
    //QObject *qmlHeaderObject = rootObject->findChild<QObject*>("headerPanel");
    //QObject *dateTimeObject = qmlHeaderObject->findChild<QObject*>("dateTimeText");

    // Get Curent Date and Time
    //QDateTime *date = new QDateTime(QDateTime::currentDateTime());
    //qDebug() << date->toString();
    DateTimer currentDateTime;
    QObject::connect(&currentDateTime, SIGNAL(DateTimeString(QVariant)), rootObject, SLOT(setDate(QVariant)));

    //PulseSensor pulseSensor;
    //pulseSensor.Initialize();
    //QObject::connect(rootObject, SIGNAL(startPulseSensor()), &pulseSensor, SLOT(StartPulseReading()));
    //QObject::connect(&pulseSensor, SIGNAL(FinishedPulseReading(QVariant)), rootObject, SLOT(setPulseValue(QVariant)));

    HeightSensor heightSensor;
    QObject::connect(rootObject, SIGNAL(startHeightSensor()), &heightSensor, SLOT(StartHeightReading()));
    QObject::connect(&heightSensor, SIGNAL(FinishedHeightReading(QVariant)), rootObject, SLOT(setHeightValue(QVariant)));

    return app.exec();
}

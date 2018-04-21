#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

#include <wiringPi.h>

#include "datetimer.h"
#include "heightsensor.h"
#include "temperaturesensor.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    if (wiringPiSetup() == -1)
    {
        qDebug() << "Unable to start wiringPi";
        return -1;
    }

    // Step 1: get access to the root object
    QObject *rootObject = engine.rootObjects().first();

    DateTimer currentDateTime;
    QObject::connect(&currentDateTime, SIGNAL(DateTimeString(QVariant)), rootObject, SLOT(setDate(QVariant)));

    HeightSensor heightSensor;
    QObject::connect(rootObject, SIGNAL(startHeightSensor()), &heightSensor, SLOT(StartHeightReading()));
    QObject::connect(&heightSensor, SIGNAL(FinishedHeightReading(QVariant)), rootObject, SLOT(setHeightValue(QVariant)));

    TemperatureSensor tempSensor;
    QObject::connect(rootObject, SIGNAL(startTempSensor()), &tempSensor, SLOT(StartTemperatureReading()));
    QObject::connect(&tempSensor, SIGNAL(FinishedTemperatureReading(QVariant)), rootObject, SLOT(setTempValue(QVariant)));

    return app.exec();
}

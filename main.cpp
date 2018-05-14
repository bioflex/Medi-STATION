#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

#include <wiringPi.h>

#include "datetimer.h"
#include "heightsensor.h"
#include "temperaturesensor.h"
#include "pulsesensor.h"


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
    QObject::connect(&heightSensor, SIGNAL(FinalReadingFinished()), rootObject, SLOT(heightReadingFinished()));             // final reading signal

    TemperatureSensor tempSensor;
    QObject::connect(rootObject, SIGNAL(startTempSensor()), &tempSensor, SLOT(StartTemperatureReading()));
    QObject::connect(&tempSensor, SIGNAL(FinishedTemperatureReading(QVariant)), rootObject, SLOT(setTempValue(QVariant)));
    QObject::connect(&tempSensor, SIGNAL(FinalReadingFinished()), rootObject, SLOT(tempReadingFinished()));

    PulseSensor pulseSensor;
    QObject::connect(rootObject, SIGNAL(startPulseSensor()), &pulseSensor, SLOT(StartPulseReading()));
    QObject::connect(&pulseSensor, SIGNAL(FinishedPulseReading(QVariant)), rootObject, SLOT(setPulseValue(QVariant)));
    QObject::connect(&pulseSensor, SIGNAL(FinalReadingFinished()), rootObject, SLOT(pulseReadingFinished()));

    return app.exec();
}

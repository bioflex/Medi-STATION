#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

#include "datetimer.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    // Step 1: get access to the root object
    QObject *rootObject = engine.rootObjects().first();
    QObject *qmlHeaderObject = rootObject->findChild<QObject*>("headerPanel");
    QObject *dateTimeObject = qmlHeaderObject->findChild<QObject*>("dateTimeText");

    // Get Curent Date and Time
    //QDateTime *date = new QDateTime(QDateTime::currentDateTime());
    //qDebug() << date->toString();
    DateTimer currentDateTime;
    QObject::connect(&currentDateTime, SIGNAL(DateTimeString(QVariant)), rootObject, SLOT(setDate(QVariant)));

    return app.exec();
}

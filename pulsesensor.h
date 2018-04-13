#ifndef PULSESENSOR_H
#define PULSESENSOR_H

#include <QtCore>
#include <QtDebug>

#include <stdio.h>
#include <bcm2835.h>

#define CLK RPI_GPIO_P1_23
#define CS_PIN RPI_GPIO_P1_24
#define DO_PIN RPI_GPIO_P1_21
#define DI_PIN RPI_GPIO_P1_19

#define PULSE_SENSOR RPI_GPIO_P1_12

#define RESULT_OFFSET 50

#define TIMING_OFFSET 1.05

class PulseSensor : public QObject
{
    Q_OBJECT

    //QString *pulseValue;
    QTimer *timer;
    QTimer *stopTimer;

public:
    PulseSensor();
    void Initialize();
    char read_ADC_SGL(int);
    char read_ADC_DIF(int);

public slots:
    void StartPulseReading();
    void NewPulseValue();

signals:
    void FinishedPulseReading(QVariant text);

private:
    char GetSensorValue(unsigned int, unsigned int);
};

#endif // PULSESENSOR_H

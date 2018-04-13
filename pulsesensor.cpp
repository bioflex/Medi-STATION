#include "pulsesensor.h"

PulseSensor::PulseSensor()
{
    if (!bcm2835_init())
        qDebug() << "bcm library could not be initialized";

    timer = new QTimer(this);
    //timer->setSingleShot(true);
    stopTimer = new QTimer(this);
    stopTimer->setSingleShot(true);

    connect(timer, SIGNAL(timeout()), this, SLOT(NewPulseValue()));

    connect(stopTimer, SIGNAL(timeout()), timer, SLOT(stop()));
}

// SLOTS
void PulseSensor::NewPulseValue()
{
    quint8 value = read_ADC_SGL(0);

    qDebug() << value;

    emit FinishedPulseReading(value);
}

void PulseSensor::StartPulseReading()
{
    timer->start(500);
    stopTimer->start(15000);
}

void PulseSensor::Initialize()
{
    bcm2835_gpio_fsel(CS_PIN, BCM2835_GPIO_FSEL_OUTP);
    bcm2835_gpio_set(CS_PIN);
    bcm2835_gpio_fsel(CLK, BCM2835_GPIO_FSEL_OUTP);
    bcm2835_gpio_clr(CLK);

    bcm2835_gpio_fsel(PULSE_SENSOR, BCM2835_GPIO_FSEL_OUTP);
    bcm2835_gpio_set(PULSE_SENSOR);

    qDebug() << "Pulse Sensor Initialized";
}

char PulseSensor::GetSensorValue(unsigned int SGL_DIFF, unsigned int ODD_SIGN)
{
    char MSBFirst = 0;
    char LSBFirst = 0;

    // Set Chip select to low to enable ADC0832
    bcm2835_gpio_clr(CS_PIN);

    // Request data
    bcm2835_gpio_fsel(DI_PIN, BCM2835_GPIO_FSEL_OUTP);

    // Start bit
    bcm2835_gpio_set(DI_PIN);
    bcm2835_delay(0.00025 * TIMING_OFFSET);
    bcm2835_gpio_set(CLK);
    bcm2835_delay(0.00025 * TIMING_OFFSET);
    bcm2835_gpio_clr(CLK);

    // SGL / DIFF
    if (SGL_DIFF > 0)
    bcm2835_gpio_write(DI_PIN, HIGH);
    else
    bcm2835_gpio_write(DI_PIN, LOW);
    bcm2835_delay(0.00025 * TIMING_OFFSET);
    bcm2835_gpio_set(CLK);
    bcm2835_delay(0.00009 * TIMING_OFFSET);
    bcm2835_gpio_clr(CLK);

    // ODD / SIGN Bit
    if (ODD_SIGN == 0)
    bcm2835_gpio_write(DI_PIN, LOW);
    else
    bcm2835_gpio_write(DI_PIN, HIGH);
    bcm2835_gpio_set(CLK);
    bcm2835_delay(0.00009 * TIMING_OFFSET);
    bcm2835_gpio_clr(CLK);

    // Read Data
    bcm2835_gpio_fsel(DO_PIN, BCM2835_GPIO_FSEL_INPT);

    // Read MSB Data
    int i;
    for (i = 0; i < 8; i++)
    {
        bcm2835_gpio_set(CLK);
        bcm2835_delay(0.00009 * TIMING_OFFSET);
        bcm2835_gpio_clr(CLK);
        bcm2835_delay(0.0015 * TIMING_OFFSET);

        MSBFirst = (MSBFirst << 1) | ((bcm2835_gpio_lev(DO_PIN) == HIGH) ? 1 : 0);
    }

    for (i = 0; i < 8; i++)
    {
        LSBFirst = (LSBFirst) | ((bcm2835_gpio_lev(DO_PIN) == HIGH) ? 1 : 0);
        bcm2835_gpio_set(CLK);
        bcm2835_delay(0.00009 * TIMING_OFFSET);
        bcm2835_gpio_clr(CLK);
        bcm2835_delay(0.0015 * TIMING_OFFSET);
    }

    // Set Chip Select to high to deselect the ADC0832
    bcm2835_gpio_set(CS_PIN);

    return MSBFirst;		//(MSBFirst == LSBFirst) ? MSBFirst : 0;
}

char PulseSensor::read_ADC_SGL(int channel)
{
    return GetSensorValue(1, channel);
}

char PulseSensor::read_ADC_DIF(int lowTerminal)
{
    return GetSensorValue(0, lowTerminal);
}

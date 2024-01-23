#include "BelaArduino.h"
#include "Arduino.h" // has to come after BelaArduino because of the #define s it contains
#include <BelaMsg.h>

Print Serial;

uint32_t random(uint32_t max)
{
	return random(0, max);
}

void randomSeed(uint32_t s)
{
	srand(s);
}

uint32_t random(uint32_t min, uint32_t max) {
	uint32_t ran = rand();
	return map(ran, 0, (float)RAND_MAX, min, max);
}

uint32_t millis() {
	return micros() / 1000.f;
}

unsigned long micros() {
	static timespec startp;
	static bool inited;
	struct timespec tp;
	clock_gettime(CLOCK_MONOTONIC_RAW, &tp);
	if(!inited) {
		inited = true;
		startp = tp;
		return 0;
	}
	return ((tp.tv_sec - startp.tv_sec) * 1000000 + (tp.tv_nsec - startp.tv_nsec) / 1000.0);
}

void pinMode(uint32_t channel, uint32_t mode)
{
	if(channel < digital.size())
	{
		digital[channel].mode = INPUT == mode ? kDigitalModeInput : kDigitalModeOutput;
	}
}

void digitalWrite(uint32_t channel, bool value)
{
	if(channel < digital.size())
	{
		digital[channel].mode = kDigitalModeOutput;
		digital[channel].value = value;
	}
}

void pwmWrite(uint32_t channel, float value)
{
	if(channel < digital.size())
	{
		digital[channel].mode = kDigitalModePwm;
		uint16_t pwmWidth = value * kPwmPeriod;
		pwmWidth = value >= 1 || pwmWidth > kPwmPeriod ? kPwmPeriod : pwmWidth;
		digital[channel].value = pwmWidth;
	}
}

bool digitalRead(uint32_t channel)
{
	if(channel < digital.size())
		return digital[channel].value;
	return 0;
}

float analogRead(uint32_t channel)
{
	if(channel < analogIn.size())
		return analogIn[channel];
	return 0;
}

void analogWrite(uint32_t channel, float value)
{
	if(channel < analogOut.size())
		analogOut[channel] = value;
}

#include <unistd.h>
void delay(uint32_t t) {
	// split across multiple stops so we can exit smoothly on a long wait
	while(t > 100 && !Bela_stopRequested())
	{
		usleep(100 * 1000);
		t -= 100 ;
	}
	usleep(t * 1000);
}
void delayMicroseconds(uint32_t t)
{
	usleep(t);
}
void utoa(uint32_t num, char* dest, size_t len) {
	snprintf(dest, len, "%u", num);
}
void noInterrupts() {}
void interrupts() {}

void shiftOut(uint8_t dataPin, uint8_t clockPin, uint8_t latchPin, uint8_t bitOrder, uint8_t numBits, uint32_t origBits)
{
	msgInit(kBelaSourceThreadArduino, kBelaReceiverShiftOut, 5);
	msgAdd(kBelaSourceThreadArduino, dataPin);
	msgAdd(kBelaSourceThreadArduino, clockPin);
	msgAdd(kBelaSourceThreadArduino, latchPin);
	msgAdd(kBelaSourceThreadArduino, numBits);
	uint32_t bits;
	if(MSBFIRST == bitOrder)
	{
		bits = 0;
		// reverse bits
		for(size_t n = 0; n < numBits; ++n)
		{
			bool bit = origBits & (1 << n);
			bits |= bit << (numBits - 1 - n);
		}
	} else
		bits = origBits;
	msgAdd(kBelaSourceThreadArduino, bits);
	msgSend(kBelaSourceThreadArduino);
}

/*
 * Default render file for Bela projects running Pd patches
 * using libpd.
 */
#include <Bela.h>
#include <cmath>
#include <vector>
#include <libraries/ShiftRegister/ShiftRegister.h>
#include <libraries/Scope/Scope.h>
#include "BelaArduino.h"
#include "MonoFilePlayer.h"
#include <stdlib.h>
#include <libraries/PulseIn/PulseIn.h>
#include <Arduino.h>
#include <PdArduino.h>

float gDistance0 = 0.0;
float gDistance1 = 0.0;
float gDistance2 = 0.0;
float gDistance3 = 0.0;
float gDistance4 = 0.0;
float gDistance5 = 0.0;
float gDistance6 = 0.0;
float gDistance7 = 0.0;

float gAudioLevel = 0.0; //step 1
float prevOut = 0.0;

// Object that handles playing sound from a buffer
MonoFilePlayer gPlayer;

// Filter state
float gAlpha = 0.99;

PulseIn pulseIn0, pulseIn1, pulseIn2, pulseIn3, pulseIn4, pulseIn5, pulseIn6, pulseIn7;
Scope scope;
int gTriggerInterval = 2646; // how often to send out a trigger. 2646 samples are 60ms
int gMinPulseLength = 7; //to avoid spurious readings
float gRescale = 58; // taken from the datasheet
unsigned int gTrigDigitalOutPin0 = 0; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin0 = 1; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
unsigned int gTrigDigitalOutPin1 = 2; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin1 = 3; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
unsigned int gTrigDigitalOutPin2 = 4; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin2 = 5; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
unsigned int gTrigDigitalOutPin3 = 6; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin3 = 7; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
unsigned int gTrigDigitalOutPin4 = 8; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin4 = 9; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
unsigned int gTrigDigitalOutPin5 = 10; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin5 = 11; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
unsigned int gTrigDigitalOutPin6 = 12; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin6 = 13; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
unsigned int gTrigDigitalOutPin7 = 14; //channel to be connected to the module's TRIGGER pin - check the pin diagram in the IDE
unsigned int gEchoDigitalInPin7 = 15; //channel to be connected to the modules's ECHO pin via resistor divider. Check the pin diagram in the IDE
int gTriggerCount = 0;
int gPrintfCount = 0;

bool setup(BelaContext *context, void *userData)
{
	if(!BelaArduino_setup(context, NULL)) 
	return false;// Don't remove this! Supports the Arduino code.
	
	// Set the mode of digital pins
	pinMode(context, 0, gTrigDigitalOutPin0, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin0, INPUT); // reading from ECHO pin
	pulseIn0.setup(context, gEchoDigitalInPin0, HIGH); //detect HIGH pulses on the ECHO pin
	
	pinMode(context, 0, gTrigDigitalOutPin1, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin1, INPUT); // reading from ECHO pin
	pulseIn1.setup(context, gEchoDigitalInPin1, HIGH); //detect HIGH pulses on the ECHO pin
	
	pinMode(context, 0, gTrigDigitalOutPin2, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin2, INPUT); // reading from ECHO pin
	pulseIn2.setup(context, gEchoDigitalInPin2, HIGH); //detect HIGH pulses on the ECHO pin
	
	pinMode(context, 0, gTrigDigitalOutPin3, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin3, INPUT); // reading from ECHO pin
	pulseIn3.setup(context, gEchoDigitalInPin3, HIGH); //detect HIGH pulses on the ECHO pin
	
	pinMode(context, 0, gTrigDigitalOutPin4, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin4, INPUT); // reading from ECHO pin
	pulseIn4.setup(context, gEchoDigitalInPin4, HIGH); //detect HIGH pulses on the ECHO pin
	
	pinMode(context, 0, gTrigDigitalOutPin5, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin5, INPUT); // reading from ECHO pin
	pulseIn5.setup(context, gEchoDigitalInPin5, HIGH); //detect HIGH pulses on the ECHO pin
	
	pinMode(context, 0, gTrigDigitalOutPin6, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin6, INPUT); // reading from ECHO pin
	pulseIn6.setup(context, gEchoDigitalInPin6, HIGH); //detect HIGH pulses on the ECHO pin
	
	pinMode(context, 0, gTrigDigitalOutPin7, OUTPUT); // writing to TRIGGER pin
	pinMode(context, 0, gEchoDigitalInPin7, INPUT); // reading from ECHO pin
	pulseIn7.setup(context, gEchoDigitalInPin7, HIGH); //detect HIGH pulses on the ECHO pin
	
	scope.setup(16, context->digitalSampleRate);
	
	return true;
}

void render(BelaContext *context, void *userData)
{
	BelaArduino_renderTop(context);// Don't remove this! Supports the Arduino code.

	for(unsigned int n = 0; n < context->digitalFrames; ++n){
		
		// Play sound file
        float in = audioReadNI(context, n, 0);
        

		float out = in;
		// TODO: rectify and filter to get amplitude
		//       use this formula:
		//       y[n] = alpha * y[n-1] + (1 - alpha) * x[n]
		float absolute = fabsf(in);
		out = gAlpha * prevOut + (1 - gAlpha)*absolute;
        // TODO: store the output value in a variable shared with the Arduino loop() function
		gAudioLevel = out;
		
    	// Write the input and the filtered output to the scope
  		prevOut = out;
		
		gTriggerCount++;
		bool state;
		if(gTriggerCount == gTriggerInterval){
			gTriggerCount = 0;
			state = HIGH;
		} else {
			state = LOW;
		}
		
		digitalWrite(context, n, gTrigDigitalOutPin0, state); //write the state to the trig pin
		int pulseLength0 = pulseIn0.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration0 = 1e6 * pulseLength0 / context->digitalSampleRate; // pulse duration in microseconds
		
		digitalWrite(context, n, gTrigDigitalOutPin1, state); //write the state to the trig pin
		int pulseLength1 = pulseIn1.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration1 = 1e6 * pulseLength1 / context->digitalSampleRate; // pulse duration in microseconds
		
		digitalWrite(context, n, gTrigDigitalOutPin2, state); //write the state to the trig pin
		int pulseLength2 = pulseIn2.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration2 = 1e6 * pulseLength2 / context->digitalSampleRate; // pulse duration in microseconds
		
		digitalWrite(context, n, gTrigDigitalOutPin3, state); //write the state to the trig pin
		int pulseLength3 = pulseIn3.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration3 = 1e6 * pulseLength3 / context->digitalSampleRate; // pulse duration in microseconds
		
		digitalWrite(context, n, gTrigDigitalOutPin4, state); //write the state to the trig pin
		int pulseLength4 = pulseIn4.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration4 = 1e6 * pulseLength4 / context->digitalSampleRate; // pulse duration in microseconds
		
		digitalWrite(context, n, gTrigDigitalOutPin5, state); //write the state to the trig pin
		int pulseLength5 = pulseIn5.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration5 = 1e6 * pulseLength5 / context->digitalSampleRate; // pulse duration in microseconds
		
		digitalWrite(context, n, gTrigDigitalOutPin6, state); //write the state to the trig pin
		int pulseLength6 = pulseIn6.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration6 = 1e6 * pulseLength6 / context->digitalSampleRate; // pulse duration in microseconds
		
		digitalWrite(context, n, gTrigDigitalOutPin7, state); //write the state to the trig pin
		int pulseLength7 = pulseIn7.hasPulsed(context, n); // will return the pulse duration(in samples) if a pulse just ended
		float duration7 = 1e6 * pulseLength7 / context->digitalSampleRate; // pulse duration in microseconds

		static float distance0 = 0;
		static float distance1 = 0;
		static float distance2 = 0;
		static float distance3 = 0;
		static float distance4 = 0;
		static float distance5 = 0;
		static float distance6 = 0;
		static float distance7 = 0;
		
		if(pulseLength0 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance0 = duration0 / gRescale;
		}
		
		if(pulseLength1 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance1 = duration1 / gRescale;
		}
		
		if(pulseLength2 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance2 = duration2 / gRescale;
		}
		
		if(pulseLength3 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance3 = duration3 / gRescale;
		}
		
		if(pulseLength4 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance4 = duration4 / gRescale;
		}
		
		if(pulseLength5 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance5 = duration5 / gRescale;
		}
		
		if(pulseLength6 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance6 = duration6 / gRescale;
		}
		
		if(pulseLength7 >= gMinPulseLength){
			// rescaling according to the datasheet
			distance7 = duration7 / gRescale;
		}
        
		gDistance0 = distance0;
		gDistance1 = distance1;
		gDistance2 = distance2;
		gDistance3 = distance3;
		gDistance4 = distance4;
		gDistance5 = distance5;
		gDistance6 = distance6;
		gDistance7 = distance7;
		
		// Logging to the scope the pulse inputs (gEchoDigitalInPin) and the distance
		scope.log(
			digitalRead(context, n, gEchoDigitalInPin0) * 0.5, distance0/100,
			digitalRead(context, n, gEchoDigitalInPin1) * 0.5, distance1/100,
			digitalRead(context, n, gEchoDigitalInPin2) * 0.5, distance2/100,
			digitalRead(context, n, gEchoDigitalInPin3) * 0.5, distance3/100,
			digitalRead(context, n, gEchoDigitalInPin4) * 0.5, distance4/100,
			digitalRead(context, n, gEchoDigitalInPin5) * 0.5, distance5/100,
			digitalRead(context, n, gEchoDigitalInPin6) * 0.5, distance6/100,
			digitalRead(context, n, gEchoDigitalInPin7) * 0.5, distance7/100
		);
	}
	
	BelaArduino_renderBottom(context);// Don't remove this! Supports the Arduino code.
}

void cleanup(BelaContext *context, void *userData)
{
	BelaArduino_cleanup(context, NULL);// Don't remove this! Supports the Arduino code.
}

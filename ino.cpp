#include <libraries/Trill/Trill.h>
#include <Arduino.h>
#include <PdArduino.h>
#include <Adafruit_PWMServoDriver.h>
#include <Wire.h>
#include <string>

//initialise trill
Trill gTouchSensor;

//initialise servo drivers
Adafruit_PWMServoDriver pwm1 = Adafruit_PWMServoDriver(0x40);
Adafruit_PWMServoDriver pwm2 = Adafruit_PWMServoDriver(0x41);

//define board params
const int board_width = 8;
const int board_height = 4;
const float trillTrigger = 0.15;
int noiseCount = 0;

//array to reflect left wave board state for touch mode
float leftWaves[board_height*board_width] = {
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
};//0   1    2    3    4    5    6    7

//array to reflect left wave board state for touch mode
float rightWaves[board_height*board_width] = {
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
};//0   1    2    3    4    5    6    7

//array to reflect combined wave board state for touch mode
float combinedWaves[board_height*board_width] = {
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
};//0   1    2    3    4    5    6    7

//array to reflect old combined wave board state for touch wave
float oldCombinedWaves[board_height*board_width] = {
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
};//0   1    2    3    4    5    6    7

//array to reflect the old board state of the ultrasonic interaction
float handOldBoard[board_height*board_width] = {
	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
};//  0   1    2    3    4    5    6    7

//arrays to reflect the noise wave
float noiseBoards[4][board_height*board_width] = {
	{
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
		0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, //1
		0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, //2
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
	},
	{
		0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, //0
		0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, //1
		0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, //2
		0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0  //3
	},
	{
		0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, //0
		0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, //1
		0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, //2
		0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0  //3
	},
	{
		1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, //0
		1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, //1
		1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, //2
		1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0  //3
	}
};//  0   1    2    3    4    5    6    7

//arrays to reflect the noise wave
float soundBoards[5][board_height*board_width] = {
	{
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
	},
	{
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
		0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, //1
		0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, //2
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
	},
	{
		0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, //0
		0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, //1
		0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, //2
		0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0  //3
	},
	{
		0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, //0
		0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, //1
		0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, //2
		0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0  //3
	},
	{
		1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, //0
		1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, //1
		1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, //2
		1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0  //3
	}
};//  0   1    2    3    4    5    6    7

//array to refrence servo arrangment
const int servoRef[board_height*board_width] = {
	0, 4, 8, 12, 16, 20, 24, 28, //0
	1, 5, 9, 13, 17, 21, 25, 29, //1
	2, 6, 10, 14, 18, 22, 26, 30, //2
	3, 7, 11, 15, 19, 23, 27, 31  //3
};//0  1  2   3  4   5   6   7

//array to calibrate midpoint of individual servos
const int servoCalibration[board_height*board_width] = {
	0, 0, 0, 0, -10, -10, -10, 0,
	-20, 0, -10, 0, -10, 0, -100, 0,
	0, -10, 0, -5, -10, -10, 0, -20,
	0, -20, -20, -30, -20, -10, -30, 0
};

//define servo minimum maximum and mid point values
#define servoMIN 270
#define servoMID 380
#define servoMAX 500

//retrive ultrasonic sensor distance values from render.cpp
extern float gDistance0;
extern float gDistance1;
extern float gDistance2;
extern float gDistance3;
extern float gDistance4;
extern float gDistance5;
extern float gDistance6;
extern float gDistance7;
extern float gAudioLevel;

//define distance array for future use
float distanceArray[8] = {
	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
};

//utility function to move servos based on a single move value and index from 0-31
void moveServo(int servo, int moveVal) //taking servo index and value to move by
{
	//Loop to apply motor calibrations
	int ref = 0; //Define ref variable
	for (int i = 0; i < (board_width*board_height); i++) { //loop through each element in servo ref
		if (servoRef[i] == servo) { //if servo ref matches the servo chosen
			ref = i; //assign ref to its index
		}
	} 
	
	if (servo < 16) { //if servo is on the first board
		pwm1.setPWM(servo, 0, moveVal + servoCalibration[ref]); //move servo from 0 to move value + calibration
	} else { //if servo is on the second board
		pwm2.setPWM(servo-16, 0, moveVal + servoCalibration[ref]); //correct index and move servo from 0 to move value + calibration
	}
}

//utility function to print the state of the board to terminal in a visual layout
void printBoard (float* array, int array_width = board_width, int array_height = board_height) //taking board to print and board width and height with default set to board with and board height
{	
	Serial.println("-------------");
	int rowOffset = 0; //define rowOffset
	for (int i = 0; i < array_height; i++) { //loop through each row
		std::string row = ""; //define a row string
		for (int i = (0+rowOffset); i < (array_width+rowOffset); i++) { //loop through each column using row offset
			row += std::to_string(array[i]).erase(4); //append value in array to string and remove too many decimals
			row += ' '; //add space between values
		}
		Serial.println(row); //print the row
		rowOffset += array_width; //add the width to row offset so the index starts from the new row
	}
	Serial.println("-------------");
}

//utility function to map array values to servo values correctly
int mapVal(float val) //take value from 0-1
{
	if (val < 0.5) { //if value is less than 0.5
		int mappedServoValue = map(val, 0.0, 0.5, servoMIN, servoMID);
		return mappedServoValue; //map the value in the range 0-0.5 to the range of servo minimum and servo mid point
	} else if (val > 0.5) { //if the value is more than 0.5
		int mappedServoValue = map(val, 0.5, 1.0, servoMID, servoMAX);
		return mappedServoValue; //map the value in the range 0.5-1 to the range of servo mid point and servo maximum
	}
	return servoMID; //if the value is 0.5, return the servo mid point
}

//utility function to set all servos to neutral point
void resetBoard()
{
	for (int i = 0; i < (board_width*board_height); i++) { //loop through all elements in board
		moveServo(i, mapVal(0.5)); //move the servos to middle
		delay(100); //wait to ensure power draw is not too much for servo drivers and power supply
	}
}

//utility function to ensure all servos are working correctly
void testBoard()
{
	for (int i = 0; i < (board_width*board_height); i++) { //loop through all elements in board
		moveServo(i, mapVal(0.0)); //move servo to minimum value
		delay(100); //wait
		moveServo(i, mapVal(1.0)); //move servo to maximum value
		delay(100); //wait
		moveServo(i, mapVal(0.5)); //move servo to mid point value
		delay(100); //wait
	}
}

//function for audio reflection
int soundWave()
{
	//define min and max audios
	float minAudio = 0.00;
	float maxAudio = 0.005;
	
	//map audio level to index
	int audioIndex = map(gAudioLevel, minAudio, maxAudio, 0, 4);
	Serial.println(audioIndex);
	//return index
	return audioIndex;
}

//define left pins to recieve input
int leftTrillPins[4] = {0, 4, 9, 14};

void createLeftWave()
{
	for (int i = 0; i < 4; i++) { //loop through all pins on left side
		if (gTouchSensor.rawData[leftTrillPins[i]] > trillTrigger) { //if pin is being triggered
			leftWaves[i*board_width] = 1.0; //add wave to left waves array at correct index
		}
	}
}

//define left pins to recieve input
int rightTrillPins[4] = {29, 25, 20, 15};

void createRightWave()
{
	for (int i = 0; i < 4; i++) { //loop through all pins on right side
		if (gTouchSensor.rawData[rightTrillPins[i]] > trillTrigger) { //if pin is being triggered
			rightWaves[i*board_width+7] = 1.0; //add wave to right waves array at correct index
		}
	}
}

//Function used to translate the left array 1 index right
void translateRight()
{
	//Define temporary board array
	float waveToTranslate[board_height*board_width] = {
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
	};//0   1    2    3    4    5    6    7
	
	//Set temporary array to take the values of leftWaves
	for (int i = 0; i < (board_width*board_height); i++) { //for all elements in both arrays
		waveToTranslate[i] = leftWaves[i]; //set wave to translate at index to left waves at index
	}
	
	int rowOffset = 0; //define row offset
	for (int i = 0; i < board_height; i++) { //loop through each row
		float currentRow[board_width] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}; //define current row as empty
		for (int i = (0+rowOffset); i < (board_width+rowOffset); i++) { //loop through each column using row offset
			currentRow[i-rowOffset+1] = waveToTranslate[i]; //set current row at index + 1 to wave to translate at index
		}
		for (int i = 0; i < board_width; i++) { //loop through each element in current row
			leftWaves[i+rowOffset] = currentRow[i]; //set left waves row to current row
		}
		rowOffset += board_width; //add the width to row offset so the index starts from the new row
	}
}

//function used to translate the right wave 1 index left
void translateLeft()
{
	//Define temporary board array
	float waveToTranslate[board_height*board_width] = {
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
	  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
	};//0   1    2    3    4    5    6    7
	
	//Set temporary array to take the values of rightWaves
	for (int i = 0; i < (board_width*board_height); i++) { //for all elements in both arrays
		waveToTranslate[i] = rightWaves[i]; //set wave to translate at index to right waves at index
	}
	
	int rowOffset = 0; //define row offset
	for (int i = 0; i < board_height; i++) { //loop through each row
		float currentRow[board_width] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}; //define current row as empty
		for (int i = (0+rowOffset); i < (board_width+rowOffset); i++) { //loop through each column using row offset
			if (i-rowOffset-1 >= 0 && rowOffset + i) { //if in the correct index
				currentRow[i-rowOffset-1] = waveToTranslate[i];	//set current row at index + 1 to wave to translate at index
			}
		}
		for (int i = 0; i < board_width; i++) { //loop through each element in current row
			rightWaves[i+rowOffset] = currentRow[i]; //set right waves row to current row
		}
		rowOffset += board_width; //add the width to row offset so the index starts from the new row
	}
}

//Function that combines 2 boards
void combineWaves(float *wave1, float *wave2) //takes 2 boards (arrays)
{
	for (int i = 0; i < (board_width*board_height); i++) { //loop through the size of both boards
		if (wave1[i] + wave2[i] <= 1) { //if the value of both waves at index i sums to less than or equal to 1
			combinedWaves[i] = wave1[i] + wave2[i]; //set combined waves value to the sum at index
		} else { //if the sum is greater than 1
			combinedWaves[i] = 1.0; //set combined waves at that index to 1
		}
	}
}

//function used to translate array to physical board
void setCombinedWave()
{
	for (int i = 0; i < (board_width*board_height); i++) { //for all elements in the array
		if (combinedWaves[i] != oldCombinedWaves[i]) { //if the element from the old board does not equal the new board
			int mappedServoValue = map(combinedWaves[i], 0.0, 1.0, servoMID, servoMAX);
			moveServo(servoRef[i], mappedServoValue); //move the servo to the new board position
		}
	}
	for (int i = 0; i < (board_width*board_height); i++) { //for all elements in the array
		oldCombinedWaves[i] = combinedWaves[i]; //update oldboard to look like new board
	}
}

//function to implement the touch wave interaction
void touchWave()
{
	createLeftWave(); //run create left wave
	createRightWave(); //run create right wave
	combineWaves(leftWaves, rightWaves); //combine right and left waves
	translateLeft(); //translate the right wave left
	translateRight(); //translate the left wave right
}

//function to reflect hand wave interaction
void handWave()
{
	//define board max and min input ranges
	const int boardMaxLength = 45;
	const int boardMinLength = 4;
	
	//define a new empty board state
	float handBoard[board_height*board_width] = {
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
		0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
	};//  0   1    2    3    4    5    6    7
	
    //calculate and define board increments between max and min
    const float boardIncrement = (boardMaxLength-boardMinLength)/board_height;
    
    for (int i = 0; i < board_width; i++) {//loop through each ultrasonic sensor
		if (distanceArray[i] < boardMaxLength && distanceArray[i] > boardMinLength) { //if distance value within min and max range
			int handPosition = ((distanceArray[i] - boardMinLength)/boardIncrement)-0.5; //calculated hand position as vertical index value
			handBoard[handPosition*board_width+i] = 1.0; //update hand board to include value found
		}
	}
	for (int i = 0; i < (board_width*board_height); i++) { //loop through each element in previous hand board state
		handOldBoard[i] = handBoard[i]; //update old board with each of new boards values
	}
}

//setup function
void setup()
{	
    Serial.begin(9600); //begin serial
    pwm1.begin(); //setup for servo driver 1
    pwm2.begin(); //setup for servo driver 2
    pwm1.setPWMFreq(60); //setup for servo driver 1
    pwm2.setPWMFreq(60); //setup for servo driver 2
    
    gTouchSensor.setup(1, Trill::CRAFT); //setup trill
	gTouchSensor.setPrescaler(2); //define trill prescaler value
	gTouchSensor.updateBaseline(); //update trill baseline
	
	resetBoard(); //set board to neutral state
}

//loop function
void loop()
{
	gTouchSensor.readI2C(); //read new trill sensor values
	
	//update distances in distanceArray to be looped through
	distanceArray[0] = gDistance0;
    distanceArray[1] = gDistance1;
    distanceArray[2] = gDistance2;
    distanceArray[3] = gDistance3;
    distanceArray[4] = gDistance4;
    distanceArray[5] = gDistance5;
    distanceArray[6] = gDistance6;
    distanceArray[7] = gDistance7;
    
    //uncomment to print distance values
    // for (int i = 0; i < 8; i++) { //for each element in distance array
    // 	Serial.println(std::to_string(i) + ": " + std::to_string(distanceArray[i])); //print distance
    // }
    
    //uncomment to print trill values
    // for (int i = 0; i < 4; i++) {
    // 	Serial.println("right " + std::to_string(i) + ": " + std::to_string(gTouchSensor.rawData[rightTrillPins[i]]));
    // 	Serial.println("left " + std::to_string(i) + ": " + std::to_string(gTouchSensor.rawData[leftTrillPins[i]]));
    // }
	
	//Uncomment to test all servos are working
	//testBoard();
	
	//Uncomment to print the audio level
	Serial.println(gAudioLevel);
	
	//Main function
	handWave(); //run hand wave
	
	touchWave(); //run touch wavve
	
	combineWaves(handOldBoard, combinedWaves); //combine results of hand wave and touch wave
	
	//combineWaves(soundBoards[soundWave()], combinedWaves); //combine results of noise wave and combined wave
	
	//if audio at activation level or wave in process
	if (gAudioLevel > 0.002 || noiseCount != 0) { 
		combineWaves(noiseBoards[noiseCount], combinedWaves); //combine results of noise wave and combined wave
		noiseCount++; //add to noise count
		if (noiseCount >= 4) { //if wave complete
			noiseCount = 0; //set count back to 0
		}
	}
	
	setCombinedWave(); //reflect the result of the combined wave on the board
	//End main function
	
	//uncomment to print the result of the board
	//printBoard(combinedWaves); //print the combined wave
	
	delay(100); //wait 0.002
}


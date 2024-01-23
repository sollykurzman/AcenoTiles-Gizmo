/*#include <Arduino.h>
#include <PdArduino.h>
#include <Adafruit_PWMServoDriver.h>
#include <Wire.h>
#include <string>

const int board_width = 8;
const int board_height = 4;

float board[board_height*board_width] = {
  1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //0
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, //1
  0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, //2
  0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0  //3
};//0   1    2    3    4    5    6    7

// Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();

// #define servoMIN 150
// #define servoMAX 600

// float createWave(float array, int array_width, int array_height, int x, int y, int speed, std::string type = "linear", std::string direction = "all")
// {
//   Serial.println(array);
//   return array;
// }

void createWave (float* array, int array_width, int array_height, int x, int y, int speed)
{
	if (y > (array_height - 1) || y < 0) {
		throw std::invalid_argument( "y origin coordinate out of scope" );
	}
	if (x > (array_width - 1) || x < 0) {
		throw std::invalid_argument( "x origin coordinate out of scope" );
	}
	
	for (int i = 0; i < array_width*array_height; i++) {
		Serial.println(array[i]);
		//Serial.print(array[array_width*(y)+x-1]);
	}
}
    
void setup()
{
    // Serial.begin(9600);
    // pwm.begin();
    // pwm.setPWMFreq(60);
    createWave(board, board_width, board_height, 0, 0, 500);
    //Serial.println(sizeof(board) / sizeof(board[0]));
}

void loop()
{	
	// createWave(board, board_width, board_height, 1, 1, 500);
	// for (int servo = 0; servo < 4; servo++ ) {
	//     pwm.setPWM(servo, 0, servoMIN);
	//     Serial.println(servo);
	//     delay(300);
	// }
	
	// for (int servo = 3; servo >= 0; servo-- ) {
	//     pwm.setPWM(servo, 0, servoMAX);
	//     Serial.println(servo);
	//     delay(300);
	// }
	delay(1000);
}*/
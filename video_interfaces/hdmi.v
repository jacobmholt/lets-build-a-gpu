// The Nameless GPU
//
// Copyright (C) 2013 Jacob Holt & Matthew Brades.
// All rights reserved.
// This code is licensed under the NGPUL, file ngpul.txt,
// which you should have recieved with this code. 
// If not, please email Jacob at jacob.matthew.holt<at>gmail.com
//
// PCB NOTES:
// - Pins 2, 5, 8, 11 connect to earth
// - Connect Clock and Data lines using 1xLM339

module HDMIController (
	// Data
	Data0,		// Pin 7, 9 - In/Out
	Data1,		// Pin 4, 6 - In/Out
	Data2,		// Pin 1, 3 - In/Out

	// Clock
	Clock, 		// Pin 10, 12 - Input

	// CEC
	CEC,		// Pin 13 - In/Out

	// I2C
	I2CClock,	// Pin 15 - Input
	I2CData,	// Pin 16 - In/Out
);

// Data
inout	wire	Data0;
inout	wire	Data1;
inout	wire	Data2;

// Clock
input	wire	Clock;

// CEC
inout	wire	CEC;

// I2C
input	wire	I2CClock;
inout	wire	I2CData;

endmodule

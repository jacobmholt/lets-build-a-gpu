// The Nameless GPU
//
// Copyright (C) 2013 Matthew Brades and Jacob Holt.
// All rights reserved.
//
// Permission to use and/or modify without permission is given with the following conditions:
// 1) You do not make any money from the code provided directly, i.e. You do not sell the GPU - fabricated, or in source/BIT form.
// 2) You do not claim this code (the entire GPU's code) as entirely your own effort.
// 3) You do not hold us responsible for any damage caused to your computer.
// 4) You do not modify the terms of this licence.
//
// If you need to use this code for purposes which the above licence
// does not grant, then feel free to contact Matthew at
// thelumpit<at>yahoo.co.uk
//
// That's the legal stuff over with.
//
// TODO:
// 1) Extend this from PCIe x1 to PCIe x16
// 2) Pad out the controller to be vaguely functional
// 3) (Wishful thinking) Achieve complete PCIe compatibility.
// 4) (Very wishful thinking) Get an article on Tom's Hardware about this.

module PCIeController (
	// Sensing pins
	Present1,	// Pin A1 - In/Out
	Present2_B17,	// Pin B17 - In/Out
	Present2_B31,	// Pin B31 - In/Out
	Present2_B48,	// Pin B48 - In/Out
	Present2_B81,	// Pin B81 - In/Out
	// JTAG
	JTAGClock,	// Pin A5 - Input
	JTAGDataInput,	// Pin A6 - Input
	JTAGDataOutput, // Pin A7 - Output
	JTAGTestMode,	// Pin A8 - Input
	JTAGReset,	// Pin B9 - Input
	// System Management Bus
	SMBusClock, 	// Pin B5 - In/Out
	SMBusData, 	// Pin B6 - In/Out
	// Link
	Wake, 		// Pin B11 - Output
	Stable,		// Pin B17 - Input
	// Clock
	ClockPlus,	// Pin A13 - Input
	ClockMinus, 	// Pin A14 - Input
	// Data Block 0
	Data0OutPlus,	// Pin B14 - Output
	Data0OutMinus,	// Pin B15 - Output
	Data0InPlus,	// Pin A16 - Input
	Data0InMinus,   // Pin A17 - Input
);

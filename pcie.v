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
// 1) Actually assign the correct pin numbers to the lanes
// 2) Pad out the controller to be vaguely functional
// 3) (Wishful thinking) Achieve complete PCIe compatibility.
// 4) (Very wishful thinking) Get an article on Tom's Hardware about this.
//
// PCB NOTES:
// Connect up clock using 1xLM311.
// Connect up data lanes using 4xLM339.
// Connect up Present lanes using wire.

module PCIeController (
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
	Stable,		// Pin B17 - Input
	// Clock
	Clock,		// Pin A13, A14 - Input
	// Data 
        Data0In,        // Pin A16, A17 - Input
	Data0Out,	// Pin B14, B15 - Output
	Data1In,	// Pin A20, A21 - Input
	Data1Out,	// Pin B18, B19 - Output
	Data2In,	// Pin A24, A25 - Input
	Data2Out,	// Pin B22, B23 - Output
	Data3In,	// Pin A28, A29 - Input
	Data3Out,	// Pin B26, B27 - Output
	Data4In,	// Pin A32, A33 - Input
	Data4Out, 	// Pin B30, B31 - Output
	Data5In,	// Pin A36, A37 - Input
	Data5Out,	// Pin B34, B35 - Output
	Data6In,	// Pin A40, A41 - Input
	Data6Out,	// Pin B38, B39 - Output
	Data7In,	// Pin A44, A45 - Input
	Data7Out,	// Pin B42, B43 - Output
        Data8In,        // Pin A16, A17 - Input
        Data8Out,       // Pin B14, B15 - Output
        Data9In,        // Pin A20, A21 - Input
        Data9Out,       // Pin B18, B19 - Output
        Data10In,       // Pin A24, A25 - Input
        Data10Out,      // Pin B22, B23 - Output
        Data11In,       // Pin A28, A29 - Input
        Data11Out,      // Pin B26, B27 - Output
        Data12In,       // Pin A32, A33 - Input
        Data12Out,      // Pin B30, B31 - Output
        Data13In,       // Pin A36, A37 - Input
        Data13Out,      // Pin B34, B35 - Output
        Data14In,       // Pin A40, A41 - Input
        Data14Out,      // Pin B38, B39 - Output
        Data15In,       // Pin A44, A45 - Input
        Data15Out       // Pin B42, B43 - Output
);

// JTAG
input 	JTAGClock;
input 	JTAGDataInput;
output 	JTAGDataOutput;
input 	JTAGTestMode;
input 	JTAGReset;
// System Management Bus
inout 	SMBusClock;
inout 	SMBusData;
// Link
input 	Stable;
// Clock
input 	Clock;
// Data
input 	Data0In;
output 	Data0Out;
input   Data1In;
output  Data1Out;
input   Data2In;
output  Data2Out;
input   Data3In;
output  Data3Out;
input   Data4In;
output  Data4Out;
input   Data5In;
output  Data5Out;
input   Data6In;
output  Data6Out;
input   Data7In;
output  Data7Out;
input   Data8In;
output  Data8Out;
input   Data9In;
output  Data9Out;
input   Data10In;
output  Data10Out;
input   Data11In;
output  Data11Out;
input   Data12In;
output  Data12Out;
input   Data13In;
output  Data13Out;
input   Data14In;
output  Data14Out;
input   Data15In;
output  Data15Out;

always @ (posedge JTAGClock)
begin
	JTAGDataOutput = JTAGDataInput;
end

// The Nameless GPU
//
// Copyright (C) 2013 Jacob Holt & Matthew Brades.
// All rights reserved.
// This code is licenced under the NGPUL, file ngpul.txt,
// which you should have recieved with this code. If not, please email Jacob at jacob.matthew.holt@gmail.com
//
// TODO:
// 1) Pad out the controller to be vaguely functional
// 2) (Wishful thinking) Achieve complete PCIe compatibility.
// 3) (Very wishful thinking) Get an article on Tom's Hardware about this.
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
	Data1In,	// Pin A21, A22 - Input
	Data1Out,	// Pin B19, B20 - Output
	Data2In,	// Pin A25, A26 - Input
	Data2Out,	// Pin B23, B24 - Output
	Data3In,	// Pin A29, A30 - Input
	Data3Out,	// Pin B27, B28 - Output
	Data4In,	// Pin A35, A36 - Input
	Data4Out, 	// Pin B33, B34 - Output
	Data5In,	// Pin A39, A40 - Input
	Data5Out,	// Pin B37, B38 - Output
	Data6In,	// Pin A43, A44 - Input
	Data6Out,	// Pin B41, B42 - Output
	Data7In,	// Pin A47, A48 - Input
	Data7Out,	// Pin B45, B46 - Output
        Data8In,        // Pin A52, A53 - Input
        Data8Out,       // Pin B50, B51 - Output
        Data9In,        // Pin A56, A57 - Input
        Data9Out,       // Pin B54, B55 - Output
        Data10In,       // Pin A60, A61 - Input
        Data10Out,      // Pin B58, B59 - Output
        Data11In,       // Pin A64, A65 - Input
        Data11Out,      // Pin B62, B63 - Output
        Data12In,       // Pin A66, A67 - Input
        Data12Out,      // Pin B64, B65 - Output
        Data13In,       // Pin A72, A73 - Input
        Data13Out,      // Pin B70, B71 - Output
        Data14In,       // Pin A76, A77 - Input
        Data14Out,      // Pin B78, B79 - Output
        Data15In,       // Pin A80, A81 - Input
        Data15Out       // Pin B78, B79 - Output
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

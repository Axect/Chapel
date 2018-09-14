var myInt: int = -1000;
var myUint: uint = 1234;
var myReal: real = 9.876;
var myImag: imag = 5.0i;
var myCplx: complex = 10 + 9i;
var myStr: string = "Some String...";
var myBool: bool = false;

writeln(myInt + myImag);

var my64Real: real(64) = 1.516;

var intFromReal = myReal : int;
var intFromReal2: int = myReal : int;

// type aliasing
type chroma = int;
type RGBColor = 3*chroma; // int tuple!
var black: RGBColor = (0,0,0);
var white: RGBColor = (255,255,255);

writeln(white);
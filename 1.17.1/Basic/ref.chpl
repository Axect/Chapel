var actual = 10;
ref refToActual = actual;
writeln(actual, " == ", refToActual);
actual = -123;
writeln(actual, " == ", refToActual);
refToActual = 999999;
writeln(actual, " == ", refToActual);

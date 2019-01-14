var sameTup: 2*int = (10, -1);
var diffTup: (int, real, complex) = (5, 1.928, 5+1.0i);

writeln(sameTup, ", ", diffTup);

diffTup(1) = -1;

writeln(sameTup, ", ", diffTup);

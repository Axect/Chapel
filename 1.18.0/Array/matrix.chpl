use LinearAlgebra;

var a: [0..#3, 0..#5] real;
a = 1.0;

writeln(a);
writeln();

a[0, ..] = 0.0;
a[.., 1] = 3.0;

writeln(a);
writeln();

var b = Matrix(3, 5, eltType=real);
writeln(b);
writeln();

var I1 = eye(3);
writeln(I1);
writeln();

var vec = [1,2,3,4,5];
var diagMat = diag(vec);
writeln(diagMat);
writeln();

// Matrix Multiplication
var X = Matrix(3, 5);
var Y = Matrix(5, 2);

X = 1;
Y = 2;

writeln(X);
writeln();

writeln(Y);
writeln();

var MM = dot(X, X.T);
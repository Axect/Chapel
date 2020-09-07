use LinearAlgebra;
use Random;

config const r = 10;
config const c = 10;

var A: [1..r, 1..c] real;
var B: [1..r, 1..c] real;
fillRandom(A);
fillRandom(B);

var C = A.dot(B);
writeln(C[r,c]);

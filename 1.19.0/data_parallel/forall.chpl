config const m = 100,
             n = 100;

const D = {1..m, 1..n};

var A: [D] real;

forall (i,j) in D do
  A[i,j] = i + j/10.0;

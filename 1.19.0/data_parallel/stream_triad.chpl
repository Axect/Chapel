// Only for 1 core (2 thread)
config const m = 10000,
             alpha = 2.0;

const ProblemSpace = {1..m};

var A,B,C: [ProblemSpace] real;

forall (a,b,c) in zip(A,B,C) do
  a = b + alpha*c;

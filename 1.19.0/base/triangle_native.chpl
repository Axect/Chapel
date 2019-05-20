// Native
config const x = 10,
             y = 10;

var A: [1..x, 1..y] int;

for i in 1..x {
  for j in i..y {
    A[i,j] = i + j;
  }
}

writeln(A);

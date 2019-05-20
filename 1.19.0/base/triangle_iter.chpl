config const n = 10;

var A: [1..n, 1..n] int;

for (i,j) in triangle(n) do
  A[i,j] = i+j;

writeln(A);

iter triangle(n) {
  for i in 1..n do
    for j in i..n do
      yield (i,j);
}

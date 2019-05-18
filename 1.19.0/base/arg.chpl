proc foo(x: real, y: [] real) {
  // x = 1.2; (scalars are passed 'const in' by default)
  y = 3.4; // OK: arrays are passed 'ref' by default
}

var r: real,
    A: [1..3] real;

foo(r,A);

writeln((r, A));

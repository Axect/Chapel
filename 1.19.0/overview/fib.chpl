config const n = 10;
for f in fib(n) do
  writeln(f);

iter fib(n) {
  var curr = 0,
      next = 1;

  for i in 1..n {
    yield curr;
    curr += next;
    curr <=> next;
  }
}

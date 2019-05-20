proc foo(type t, x: t) {
  writeln(x);
}

proc bar(param bitWidth, x: int(bitWidth)) {
  writeln(bitWidth);
  writeln(x);
}

foo(int, 1521);
bar(64, 1521);

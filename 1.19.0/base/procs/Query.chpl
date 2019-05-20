module Query {
  proc foo(x: ?t, y: [?D] t) {
    for elem in y {
      writeln(x + elem);
    }
  }

  proc foo(x: ?t, y: t) {
    writeln(x + y);
  }
}

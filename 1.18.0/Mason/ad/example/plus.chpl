use ad;

proc main() {
  var a = new owned Dual(1, 0);
  var b = new owned Dual(1, 1);
  
  writeln(a + b);
}

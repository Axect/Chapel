module myMod {
  var bar = true;

  proc main() {
    use M only ;
    M.foo();
    var a = bar;
    var b = M.bar;
    
    writeln(a);
    writeln(b);
  }
}

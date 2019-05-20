use Random;

record R {
  var r: real;
  var i = 42;

  proc init() {
    var rS = new owned RandomStream(real);
    this.r = rS.getNext();
  } 

  proc postinit() {
    writeln("Created R!");
  }

  proc deinit() {
    writeln("R is going away now!");
  }
}

{
  var myR = new R();
  writeln(myR);
}

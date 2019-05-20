class Circle {
  var radius: real;
}

proc Circle.circumference() {
  return 2*pi*this.radius;
}

var c = new Circle(1.0);
writeln(c.circumference());

proc int.square() {
  return this**2;
}

writeln(5.square());

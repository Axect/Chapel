class Circle {
  var radius: real;
}

// procedures without input -> parenless
proc Circle.diameter {
  return 2*this.radius;
}

var c = new Circle(1.0);
writeln(c.radius, " ", c.diameter);

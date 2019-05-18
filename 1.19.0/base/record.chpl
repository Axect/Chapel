var c1: Circle;
c1 = new Circle(radius = 1.0);
var c2 = c1;
c1.radius = 5.0;
writeln(c1);
writeln(c2);

record Circle {
  var radius: real;
  proc area() {
    return pi*radius**2;
  }
}

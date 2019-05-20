class Circle {
  var radius: real;
  
  proc area() {
    return pi*this.radius**2;
  }
}

var c = new Circle(radius=1.0);
writef("circle: %t, area: %r", c, c.area());

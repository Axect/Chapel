record Point { var x, y: real; }

proc +(p1: Point, p2: Point): Point {
    return new Point(p1.x + p2.x, p1.y + p2.y);
}

proc Point.writeThis(w) {
    w.write("(");
    w.write(this.x);
    w.write(", ");
    w.write(this.y);
    w.write(")");
}

class Circle {
    var center : Point;
    var radius : real;
}

proc create_circle(x = 0.0, y = 0.0, diameter = 0.0) {
    var result = new owned Circle();

    result.radius = diameter / 2;
    result.center.x = x;
    result.center.y = y;

    return result;
}

writeln("Using named arguments");

var c = create_circle(diameter=3.0, 2.0);

writeln(c);
writeln();
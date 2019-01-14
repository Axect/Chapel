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

writeln("Using operator overloading");
var down = new Point(10.0, 0.0);
var over = new Point(0.0, -5.0);
writeln("down + over = ", down+over);
writeln();
use ad;

proc main() {
    var a = new owned Dual(0, 0);
    writeln(sin(a));
    writeln(cos(a));
}
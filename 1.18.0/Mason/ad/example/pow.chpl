use ad;

proc main() {
    var a = new owned Dual(2, 1);
    var b = new owned Dual(3, 0);

    writeln(a ** b); // x^3, 3x^2
    writeln(b ** a); // 3^x, 3^x * log(3)
    writeln(a ** a); // x^x, d(x^x)/x
    writeln(2 ** a); // 2^x, 2^x * log(2)
}
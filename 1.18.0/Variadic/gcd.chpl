proc gcd(in a:int, in b:int) {
    while b != 0 {
        var temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

proc gcd(a:int, b:int, c:int ...?n) {
    return gcd(gcd(a, b), (...c));
}

writeln(gcd(100, 25, 50, 200));
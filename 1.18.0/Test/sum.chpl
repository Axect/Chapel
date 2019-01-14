proc sum(in x: int, in y: int): int {
    return x + y;
}

proc sum(x: int, y: int, xs: int ...?n) {
    return sum(sum(x, y), (...xs));
}

writeln(sum(1,2,3,4,5,6,7,8,9,10));
// Polymorphism of range
proc fib(param x: int): int
    where (x <= 1) {
        return 1;
    }
proc fib(param x: int): int
    where (x >= 2) {
        return fib(x-1) + fib(x-2);
    }

writeln(fib(10));

// Polymorphism of type
proc whereType(x: ?t) where t == int {
    writeln("Inside 'int' ver");
}

proc whereType(x: ?t) {
    writeln("Generic ver");
}

whereType(10);
whereType(0.1);

proc whereType2(x: ?t) {
    select(t) {
        when int do writeln("int ver");
        otherwise do writeln("generic ver");
    }
}

whereType2(10);
whereType2(0.1);
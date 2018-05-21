proc fibonacci(n: int): int {
    if n <= 1 then return n;
    return fibonacci(n-1) + fibonacci(n-2);
}

writeln(fibonacci(10));

proc maxOf(x ...?k) {
    var maximum = x[1];
    for i in 2..k do maximum = if maximum < x[i] then x[i] else maximum;
    return maximum;
}

writeln(maxOf(1,-10,189,901, 20001, 42));

// ? is query operator
proc invertArray(A: [?D] int): [D] int {
    for a in A do a = -a;
    return A;
}

writeln(invertArray([1,3,2,5,4]));

// Type can be value
proc genericProc(arg1: ?val, arg2: val): void {
    select(val) {
        when int do writeln(arg1, " and ", arg2, " are ints");
        when real do writeln(arg1, " and ", arg2, " are reals");
        otherwise do writeln(arg1, " and ", arg2, " are somethings!");
    }
}

genericProc(1, 2);
genericProc(1.2, 2.3);
genericProc("hi", "hello");
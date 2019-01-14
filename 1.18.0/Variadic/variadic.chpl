proc intWriteln(args: int ...?n) {
    for i in 1..n {
        if i != n then
            write(args(i), " ");
        else
            writeln(args(i));
    }
}

intWriteln(1,2,3,4);

proc anyTypeWriteln(args...?n) {
    for param i in 1..n {
        if i != n then
            write(args(i), " ");
        else
            writeln(args(i));
    }
}

anyTypeWriteln(1, 2.0, 3.14 + 2.72i);

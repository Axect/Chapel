proc intWriteln(args: int ...?n) {
    for i in 1..n {
        if i != n then
            write(args(i), " ");
        else
            writeln(args(i));
    }
}

intWriteln(1,2,3,4);
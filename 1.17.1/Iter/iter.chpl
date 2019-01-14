iter oddsThenEvens(N: int): int {
    for i in 1..N by 2 do
        yield i;
    for i in 2..N by 2 do
        yield i;
}

for i in oddsThenEvens(10) do write(i, ", ");
writeln();
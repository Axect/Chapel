iter fibonacci(n: int) {
    var (current, next) = (1, 2);
    for 1..n {
        yield current;
        (current, next) = (next, current + next);
    }
}

write("The first few Fibonacci numbers are: ");

for indexVar in fibonacci(10) do
    write(indexVar, ", ");

writeln("...");
writeln();

writeln("Fibonacci Numbers");

for (i, j) in zip(1.., fibonacci(10)) {
    write("The ", i);

    select i {
        when 1 do write("st");
        when 2 do write("nd");
        when 3 do write("rd");
        otherwise write("th");
    }

    writeln(" Fibonacci number is ", j);
}
writeln();
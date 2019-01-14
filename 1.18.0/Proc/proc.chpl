proc factorial(x: int): int {
    if x < 0 then
        halt("factorial -- Sorry, this is not the gamma procedure!");

    return if x == 0 then 1 else x * factorial(x-1);
}

writeln("A simple procedure");
writeln("6! is ", factorial(6));
writeln();
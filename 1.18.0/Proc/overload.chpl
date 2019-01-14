proc factorial(x: int): int {
    if x < 0 then
        halt("factorial -- Sorry, this is not the gamma procedure!");

    return if x == 0 then 1 else x * factorial(x-1);
}

writeln("A simple procedure");
writeln("6! is ", factorial(6));
writeln();

proc factorial(x: int(32)): int(32) {
    if x < 1 then
        halt("factorial -- Invalid operand.");
    
    if x < 3 then
        return x;
    
    return x * (x - 1) * factorial(x-2);
}

// 64-bit
writeln("Another simple procedure");
writeln("33! is ", factorial(33));

// 32-bit
writeln("6! is ", factorial(6:int(32)));
writeln();
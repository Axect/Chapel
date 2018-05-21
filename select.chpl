config const a = 1;

// Can replace do with {}
select a {
    when 1 do writeln("a=1");
    otherwise do writeln("a is not 1");
}
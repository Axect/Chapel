proc abs2(x: int): int {
  if (x < 0) then
    return -x;
  else
    return x;
}

proc abs2(x: real): real {
  if (x < 0) then
    return -x;
  else
    return x+1;
}

writeln(abs2(3));
writeln(abs2(3.1));

config param useSleep = true;
use Time;

// in - does not change input
proc countDown(in n: uint = 10): void {
    while n > 0 {
        writeln(n, " ...");
        if useSleep then sleep(1);
        n -= 1;
    }
    writeln("Blastoff!");
}

writeln("Using the \"in\" intent");
var s = 5: uint;
countDown(s);
writeln("s is still ", s);  // 5
writeln();

proc countDownToZero(inout n : uint = 10) : void {
  while n > 0 {
    writeln(n, " ...");
    if useSleep then sleep(1);
    n -= 1;
  }
  writeln("Boink?");
}

writeln("Using the \"inout\" intent");
var t = 3 : uint;
countDownToZero(t);
writeln("t is now ", t);    // 0
writeln();
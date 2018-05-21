proc intentsProc(in inarg, out outarg, inout inoutarg, ref refarg) {
  writeln("Inside Before: ", (inarg, outarg, inoutarg, refarg));
  inarg = inarg + 100;
  outarg = outarg + 100;
  inoutarg = inoutarg + 100;
  refarg = refarg + 100;
  writeln("Inside After: ", (inarg, outarg, inoutarg, refarg));
}

var inVar: int = 1;
var outVar: int = 2;
var inoutVar: int = 3;
var refVar: int = 4;
writeln("Outside Before: ", (inVar, outVar, inoutVar, refVar));
intentsProc(inVar, outVar, inoutVar, refVar);
writeln("Outside After: ", (inVar, outVar, inoutVar, refVar));
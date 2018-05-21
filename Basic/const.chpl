const almostPi: real = 22.0 / 7.0;
param compileTimeConst: int = 16;

// config can be deal with commandline
config var varCmdLineArg: int = -123;
config const constCmdLineArg: int = 777;

writeln(varCmdLineArg, ", ", constCmdLineArg);
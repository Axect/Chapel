// Can overriden at runtime
// ./config --cfgVar="world"
config var cfgVar = "hello";
config const cfgConst: bool = false;

// Can overriden at compile time
// chpl config.chpl -s cfgParam=1
config param cfgParam = 4;
config type cfgType = complex;
writeln("cfgVar = ", cfgVar,
        ", cfgConst = ", cfgConst,
        ", cfgParam = ", cfgParam,
        ", cfgType = ", cfgType:string
        );
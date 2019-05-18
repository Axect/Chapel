const pi = 3.14,            // real
      coord = 1.2 + 3.4i,   // complex
      coord2 = pi*coord,    // complex
      name = "bread",       // string
      verbose = false;      // boolean

proc addem(x,y) {           // Generic arguments
  return x + y;             // and an inferred return type
}

var sum = addem(1, pi),     // sum is real (addem(int, real))
    fullname = addem(name, "ford");

writeln((sum, fullname));


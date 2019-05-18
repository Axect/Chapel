const pi = 3.141592653589793,
      solarMass = 4*pi**2,
      daysPerYear = 365.24;

config const numsteps = 10000;

record body {
  var pos: 3*real,
      v: 3*real,
      mass: real;
}


var bodies = 
  [
    /* sun */
    new body(mass = solarMass),

    /* jupiter */
    new body(
        pos = ( 4.84143144246472090e+00,
               -1.16032004402742839e+00,
               -1.03622044471123109e-01),
        v = ( 1.66007664274403694e-03 * daysPerYear,
              7.69901118419740425e-03 * daysPerYear,
             -6.90460016972063023e-05 * daysPerYear),
        mass = 9.54791938424326609e-04 * solarMass)
  ]

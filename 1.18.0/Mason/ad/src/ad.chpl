/* Automatic Differentiation */
module ad {
  use Math;

  class Dual {
    var x, dx: real;

    proc value() {
      return x;
    }

    proc slope() {
      return dx;
    }
  }

  // ===========================================================================
  // Convenience
  // ===========================================================================
  proc dual(x: real, dx: real) {
    return new owned Dual(x, dx);
  }

  // ===========================================================================
  // Ops with Dual
  // ===========================================================================
  proc -(a: Dual) {
    var new_x = - a.x;
    var new_dx = - a.dx;
    return new owned Dual(new_x, new_dx);
  }

  proc +(a: Dual, b: Dual) {
    var new_x = a.x + b.x;
    var new_dx = a.dx + b.dx;
    return new owned Dual(new_x, new_dx);
  }

  proc -(a: Dual, b: Dual) {
    return a + (-b);
  }

  proc *(a: Dual, b: Dual) {
    var new_x = a.x * b.x;
    var new_dx = a.x * b.dx + a.dx * b.x;
    return new owned Dual(new_x, new_dx);
  }

  proc /(a: Dual, b: Dual) {
    if b.x == 0 then
      halt("Zero division error!");

    var new_x = a.x / b.x;
    var new_dx = (a.dx * b.x - a.x * b.dx) / (b.x * b.x);
    return new owned Dual(new_x, new_dx);
  }

  proc **(a: Dual, b: Dual) {
    var new_x, new_dx: real;
    select classify(a.dx, b.dx) {
      when Poly {
        new_x = a.x ** b.x;
        new_dx = b.x * a.x ** (b.x - 1) * a.dx;
      }
      when Exp {
        new_x = a.x ** b.x;
        new_dx = new_x * log(b.x) * b.dx;
      }
      otherwise {
        new_x = a.x ** b.x;
        new_dx = b.dx ** log(a.x) + b.x * a.dx / a.x;
      }
    }
    return new owned Dual(new_x, new_dx);
  }

  proc sin(a: Dual) {
    var new_x = sin(a.x);
    var new_dx = cos(a.x) * a.dx;
    return new owned Dual(new_x, new_dx);
  }

  proc cos(a: Dual) {
    var new_x = cos(a.x);
    var new_dx = -sin(a.x) * a.dx;
    return new owned Dual(new_x, new_dx);
  }

  // ===========================================================================
  // Ops with real
  // ===========================================================================
  proc +(a: Dual, b: real) {
    return a + dual(b, 0);
  }

  proc +(a: real, b: Dual) {
    return b + a;
  }

  proc -(a: Dual, b: real) {
    return a - dual(b, 0);
  }

  proc -(a: real, b: Dual) {
    return a + (-b);
  }

  proc *(a: Dual, b: real) {
    return a * dual(b, 0);
  }

  proc *(a: real, b: Dual) {
    return b * a;
  }

  proc /(a: Dual, b: real) {
    return a / dual(b, 0);
  }

  proc /(a: real, b: Dual) {
    return dual(a, 0) / b;
  }

  proc **(a: Dual, b: real) {
    return a ** dual(b, 0);
  }

  proc **(a: real, b: Dual) {
    return dual(a, 0) ** b;
  }

  // ===========================================================================
  // Backend utils
  // ===========================================================================
  enum Special {
    Exp,
    Poly,
  }

  use Special;

  proc classify(dx1: real, dx2: real): Special {
    return if dx1 == 0 then Exp else Poly;
  }
}

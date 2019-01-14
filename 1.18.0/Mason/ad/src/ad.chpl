/* Documentation for ad */
module ad {
  class Dual {
    var x, dx: real;

    proc value() {
      return x;
    }

    proc slope() {
      return dx;
    }
  }

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
    if b.x == 0 {
      halt("Zero division error!");
    }

    var new_x = a.x / b.x;
    var new_dx = (a.dx * b.x - a.x * b.dx) / (b.x * b.x);
    return new owned Dual(new_x, new_dx);
  }
}

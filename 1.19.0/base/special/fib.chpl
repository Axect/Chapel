class Fib {
  var curr: int;
  var next: int;

  iter these(n: int) {
    for i in 0..#n {
      yield this.curr;
      this.curr += this.next;
      this.curr <=> this.next;
    }
  }
}

var fibs = new Fib(0, 1);

for i in fibs.these(10) do
  writeln(i);

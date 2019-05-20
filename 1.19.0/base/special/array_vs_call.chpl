class List {
  const D;
  var list: [D] real;

  proc this(i: int) {
    return this.list[i];
  }
}

proc List.init(list: [?D] ?t) {
  var temp: [D] real;
  for i in 1..list.size {
    temp[i] = list[i]: real;
  }
  this.D = D;
  this.list = temp;
}

var l = new List([1,2,3,4,5]);

writeln(l[2]);
writeln(l(2));

class ArrayLike {
    var a, b, c, d: int;
    // this allows a class to be indexed like an array
    proc this(i:int) ref {
        select i {
            when 1 do return a;
            when 2 do return b;
            when 3 do return c;
            when 4 do return d;
            otherwise halt("index out of bounds", i);
        }
    }

    // these allows a class to be iterated over;
    iter these() ref {
        yield a;
        yield b;
        yield c;
        yield d;
    }
}

var a = new owned ArrayLike();
a(2) = 1;
a(4) = 2;

for elt in a do
    writeln(elt);
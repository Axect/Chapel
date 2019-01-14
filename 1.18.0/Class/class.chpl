class C {
    var a, b: int;
    proc printFields() {
        writeln("a = ", a, " b = ", b);
    }
}

var foo = new owned C(1, 3);
foo.printFields();

proc C.sum_a_b_b(b: int) {
    return a + 2*b + this.b; // a = this.a
}

writeln(foo.sum_a_b_b(2));

// Inheritance
class D: C {
    var c = 1.2, d = 3.4;
    override proc printFields() {
        writeln("a = ", a, " b = ", b, " c = ", c, " d = ", d);
    }
}

var bar = new owned D(1, 3);
bar.printFields();
writeln(bar.sum_a_b_b(2));

// =============================================================================
// Memory Management
// =============================================================================

// There are four strategies
// owned, shared, unmanaged, borrowed

// 1. unmanaged -> manually managed
var unm: unmanaged C = new unmanaged C();

// Should be deleted
delete unm;

// 2. owned -> Only one can refer to a given instance
// But the ownership can be transferred to another variable.
var own: owned C = new owned C(1, 10);

// 3. shared -> several shared C variables can refer to the same instance
var share: shared C = new shared C(1, 10);

// 4. borrowed -> This ownership can't be transferred to another variable.
var tmp: borrowed C = new borrowed C(1, 10);

// Possible to borrow from another class pointer.
var b1 = own.borrow();
var b2: borrowed C = own;

own.printFields();

proc printSum(arg: borrowed C) {
    var sum = arg.a + arg.b;
    writeln(sum);
}

printSum(own); // same as own.borrow()
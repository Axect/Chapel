class MyClass {
    var memberInt: int;
    var memberBool: bool = true;

    // Explicitly defined initializer.
    // If not real, then compiler generated initialize
    proc MyClass(val: real) {
        this.memberInt = ceil(val): int;
    }

    // Explicitly defined deinitializer.
    proc deinit() {
        writeln("MyClass deinitializer called ", (this.memberInt, this.memberBool));
    }

    proc setMemberInt(val: int) {
        this.memberInt = val;
    }

    proc setMemberBool(val: bool) {
        this.memberBool = val;
    }

    proc getMemberInt(): int {
        return this.memberInt;
    }

    proc getMemberBool(): bool {
        return this.memberBool;
    }
}

var myObject = new MyClass(10);
writeln(myObject.getMemberInt());

var myDiffObject = new MyClass(-1, false); // Generated
writeln(myDiffObject.getMemberBool());

var myOtherObject = new MyClass(1.95); // Explicit
writeln(myOtherObject);

proc +(A: MyClass, B: MyClass): MyClass {
    var C = new MyClass();
    C.setMemberInt(A.getMemberInt() + B.getMemberInt());
    C.setMemberBool(A.getMemberBool() || B.getMemberBool());
    return C;
}

writeln(myDiffObject + myObject);

delete myObject;
delete myDiffObject;
delete myOtherObject;

// Generic Class
class GenericClass {
    type classType;
    var classDomain: domain(1);
    var classArray: [classDomain] classType;

    proc GenericClass(type classType, elements: int) {
        this.classDomain = {1..#elements};
    }

    // CopyCat
    proc GenericClass(other: GenericClass(?otherType), type classType = otherType) {
        this.classDomain = other.classDomain;
        for idx in this.classDomain do this[idx] = other[idx]: classType;
    }

    // item
    proc this(i: int) ref: classType {
        return this.classArray[i];
    }

    // iter
    iter these() ref: classType {
        for i in this.classDomain do
            yield this[i];
    }
}

var realList = new GenericClass(real, 10);
for i in realList.classDomain do realList[i] = i + 1.0;
for i in realList do write(i, ", ");
writeln();
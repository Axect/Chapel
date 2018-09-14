class FP {
    type fptype;
    var fpdomain: domain(1);
    var fplist: [fpdomain] fptype;

    proc FP(type fptype) {}

    proc input(list: [?D] ?extype, type fptype = extype) {
        this.fpdomain = D;
        this.fplist = list;
    }

    proc map(f: func(this.fptype)) {
        for i in this.fpdomain {
            this.fplist[i] = f(this.fplist[i]);
        }
    }

    proc output(): [fpdomain] fptype {
        return this.fplist;
    }
}

proc main() {
    var a: [1 .. 10] int;
    var f = new FP(int);
    f.input(a);
    f.map(lambda(x: int) { return x + 1; });
    writeln(f.output);
}
class TypeAliasField {
    type t;
    var a, b: t;
}

class ParamField {
    param p: int;
    var tup: p*int;
}

class UntypedField {
    var a;
}

// =============================================================================
// Generic Type
// =============================================================================
var taf = new owned TypeAliasField(real, 1.0, 2.0);
var taf2 = new owned TypeAliasField(int, 3, 4);
writeln("taf = ", taf, ", taf2 = ", taf2);

// =============================================================================
// Generic Param
// =============================================================================
var pf  = new owned ParamField(3);
var pf2 = new owned ParamField(2);
writeln("pf = ", pf, ", pf2 = ", pf2); 

// =============================================================================
// Untyped
// =============================================================================
var uf  = new owned UntypedField(3.14 + 2.72i);
var uf2 = new owned UntypedField(new owned ParamField(2));
writeln("uf = ", uf, ", uf2 = ", uf2);
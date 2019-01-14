var domain1to10: domain(1) = {1 .. 10};
var twoDim: domain(2) = {-2..2, 0..2};
var threeDim: domain(3) = {0..5, 1..10, 5..10};

for idx in twoDim do
    write(idx, ", ");
writeln();

for (x,y) in {1..10 by 2, 2..11 by 2} do
    write(x+y, "\t");
writeln();

var stringSet: domain(string);
stringSet += "a";
stringSet += "b";
stringSet += "c";
stringSet += "a";
stringSet -= "c";
writeln(stringSet);

var rangeA = 1..;
var rangeB = ..5;
var rangeC = rangeA[rangeB]; // intersection
writeln((rangeA, rangeB, rangeC));

// domain should be bounded
var domainA = {1..100, 5..100};
var domainB = {-100..5, -100..1};
var domainC = domainA[domainB];
writeln((domainA, domainB, domainC));
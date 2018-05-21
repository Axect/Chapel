//var evensOrFives = for i in 1..10 do if (i%2 == 0 || i % 5 == 0) then i;
//writeln(evensOrFives);

var triDom: domain(3) = {1..1000, 1..1000, 1..1000};
var triag = [(i,j,k) in triDom] if (i <= j && k <= (i+j) && i**2 + j**2 == k**2) then (i,j,k);
writeln(triag);
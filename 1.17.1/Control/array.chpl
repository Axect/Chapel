var intArray: [1..10] int;

for i in 1..10 do
    intArray[i] = -i;
writeln(intArray);

var twoDomain: domain(2) = {1..5, 1..7};
var twoArray: [twoDomain] real;

for i in twoDomain.dim(1) {
    for j in twoDomain.dim(2) {
        twoArray[i,j] = -1.6 * i + 0.5 * j;
        var idx: 2*int = (i,j);
        twoArray[idx] = - twoArray[(i,j)];
    }
}
writeln(twoArray);

for idx in twoArray.domain {
    twoArray[idx] = 1.6 * idx[1] - 0.5 * idx[2];
}
writeln(twoArray);

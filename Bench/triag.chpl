//var evensOrFives = for i in 1..10 do if (i%2 == 0 || i % 5 == 0) then i;
//writeln(evensOrFives);
for i in 1..1000 {
    for j in 1..i {
        for k in 1..(i+j) {
            if k**2 == i**2 + j**2 {
                write((j,i,k));
            }
        }
    }
}
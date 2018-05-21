fn main() {
    for i in 1i64..1000 {
        for j in 1i64..i {
            for k in 1i64..(i+j) {
                if i.pow(2) + j.pow(2) == k.pow(2) {
                    print!("{:?}", (j,i,k));
                }
            }
        }
    }
}
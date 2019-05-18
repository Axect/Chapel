fn main() {
    let mut fib = Fib::new(0, 1);
    for _i in 0 .. 50 {
        println!("{}", fib.next().unwrap());
    }
}

#[derive(Debug)]
struct Fib {
    curr: usize,
    next: usize,
}

impl Iterator for Fib {
    type Item = usize;
    fn next(&mut self) -> Option<usize> {
        let curr = self.curr;
        let next = self.next;
        self.next = curr + next;
        self.curr = next;

        Some(curr)
    }
}

impl Fib {
    fn new(a: usize, b: usize) -> Fib {
        Fib {
            curr: a,
            next: b,
        }
    }
}

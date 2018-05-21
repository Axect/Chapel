proc main() {
    writeln("PARALLELISM START");

    sync {
        begin {
            var a = 0;
            for i in 1..1000 do a += 1;
            writeln("Done: ", a);
        }
        writeln("spun off a task!");
    }
    writeln("Back together");

    proc printFibb(n: int) {
        writeln("fibonacci(", n,") = ", fib(n));
    }

    cobegin {
        printFibb(30);
        printFibb(20);
        printFibb(10);
        {
            writeln("this gets");
            writeln("executed as");
            writeln("a whole");
        }
    }

    var num_tasks = 10;
    coforall taskID in 1..#num_tasks {
        writeln("Hello from task# ", taskID);
    }

    forall i in 1..100 {
        write(i, ", ");
    }
    writeln();
}

proc fib(n: int): int {
    select(n) {
        when 0 do return 1;
        when 1 do return 1;
        otherwise do return fib(n-1) + fib(n-2);
    }
}
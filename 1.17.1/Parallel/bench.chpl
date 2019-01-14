proc main() {
    use Time;
    var timer: Timer;
    var myBigArray: [{1..40000, 1..40000}] real;

    timer.start();
    for (x,y) in myBigArray.domain {
        myBigArray[x,y] = (x: real) / (y: real);
    }
    timer.stop();
    writeln("Serial: ", timer.elapsed());
    timer.clear();

    timer.start();
    forall (x,y) in myBigArray.domain {
        myBigArray[x,y] = (x: real) / (y: real);
    }
    timer.stop();
    writeln("Parallel: ", timer.elapsed());
    timer.clear();
}
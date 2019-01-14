module DistHello {
    use CyclicDist;
    config const numMessages = 100;
    const MessageSpace = {1..numMessages} dmapped Cyclic(startIdx=1);

    proc main() {
        forall msg in MessageSpace do
            writeln(
                "Hello, world! (from iteration ",
                msg,
                " of ",
                numMessages,
                " owned by locale ",
                here.id,
                " of ",
                numLocales,
                ")"
            );
    }
}
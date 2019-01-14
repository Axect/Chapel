module ParHello {
    config const numMessages = 100;

    proc main() {
        forall msg in 1..numMessages do
            writeln(
                "Hello, world! (from iteration ",
                msg,
                " of ",
                numMessages,
                ")"
            );
    }
}

module Hello {
    // ./hello --message="안녕하세요"
    config const message = "Hello, world!";

    proc main() {
        writeln(message);
    }
}
module OurModule {
    use Time;

    proc countDown(seconds: int) {
        for i in 1..seconds by -1 {
            writeln(i);
            sleep(1);
        }
    }

    module ChildModule {
        proc foo() {
            writeln("child foo");
        }
    }

    module SiblingModule {
        proc foo() {
            writeln("sibling foo");
        }
    }
}

use OurModule;

SiblingModule.foo();
ChildModule.foo();
import helloworld;

unittest {
    assert(hello() == "Hello, World!");
    assert(hello("Alice") == "Hello, Alice!");
    assert(hello("Bob") == "Hello, Bob!");
    assert(hello("") == "Hello, !");

}

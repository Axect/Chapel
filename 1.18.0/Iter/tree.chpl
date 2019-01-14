class Tree {
    var data: string;
    var left, right: owned Tree;
}

iter postorder(tree: borrowed Tree): borrowed Tree {
    if tree != nil {
        for child in postorder(tree.left) do
            yield child;

        for child in postorder(tree.right) do
            yield child;
        
        yield tree;
    }
}

//   a
//  / \
// b   c
//    / \
//   d   e

var tree = new owned Tree( "a",
    new owned Tree("b"),
    new owned Tree("c",
        new owned Tree("d"),
        new owned Tree("e")));

proc Tree.writeThis(x) {
    var first = true;

    for node in postorder(this) {
        if first then
            first = false;
        else
            x.write(" ");

        x.write(node.data);
    }
}

writeln("Tree Data");
writeln(tree);
writeln();
writeln("Application to enums");

{
  enum color {red, blue, yellow};

  {
    var aColor = color.blue;
    writeln(aColor);
  }

  {
    use color;

    var anotherColor = yellow;
    writeln(anotherColor);
  }
}

writeln();

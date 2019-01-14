use IO;

class EmptyFilenameError: Error {
  proc init() {
  }
}

proc checkFilename(f_name: string) throws {
  if f_name.isEmptyString() then
    throw new EmptyFilenameError();
}

proc openFilename(f_name: string) throws {
  var f: file;

  try {
    f = open(f, iomode.r);
  } catch e: FileNotFoundError {
    writeln("Warning: ", f, " does not exist");
  }

  return f;
}

const f1 = "input.txt";

checkFilename(f1);

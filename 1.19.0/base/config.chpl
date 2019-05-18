config param intSize = 32;
config type elementType = real(32);
config const epsilon = 0.01:elementType;
config var start = 1:int(intSize);

// $ chpl config.chpl -sintSize=64 -selementType=real
// $ ./config --start=2 --epsilon=0.0001

main :: IO ()
main = print [(a, b, c) | c <- [1..1000], a <- [1..1000], b <- [1..a], a <= b, c <= a + b, a^2 + b^2 == c^2]
--this function checks if a number is in a list of a 2 * perfect square
isDoubleSquare:: [Integer] -> Integer-> Bool

isDoubleSquare (x:xs) n
    | x < n = isDoubleSquare xs n
    | n == x = True
    | x > n = False

loopOfPrimes :: [Integer] -> Integer -> Bool
loopOfPrimes (x:xs) n 
    | x < n =
    | even (x-n) = isDoubleSquare [2*(x^2)]
--this function checks if a number is in a list of a 2 * perfect square
isDoubleSquare:: [Integer] -> Integer-> Bool

isDoubleSquare (x:xs) n
    | x < n = isDoubleSquare xs n
    | n == x = True
    | x > n = False

--this function takes a list of all primes and composite number it is checking n
loopOfPrimes :: [Integer] -> Integer -> Bool
loopOfPrimes (x:xs) n --(x:xs) is the list of primes , n is the composite number
    | x > n = False
    | even (n-x) = if isDoubleSquare ([2*(x^2) | x <- [1..]]) (n-x) then True else loopOfPrimes xs n
    | odd (n-x) = loopOfPrimes xs n

--isPrime Functions from class
isPrime:: Integer -> Bool
isPrime 1 = False
isPrime n = ([] == [x | x <- [2..(n-1)], n `mod` x == 0])

listOfPrimes:: [Integer]
listOfPrimes  = [k | k<-[1..], isPrime k]
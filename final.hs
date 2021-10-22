{-
Hagen Sopher 
UIN: 426004814-}
{- This is the start of the the Basic Drills Homework-}
-- Basic Drill 1 Reverse a lsit
-- Goal is to flip the list
myReverse :: [Integer] -> [Integer]
myReverse [] = []
myReverse listOut = myReverse(tail listOut) ++ [head listOut]


-- Basic Drill 2: isElement
-- Goal is to see if the value is in the list
isElement :: Integer -> [Integer] -> Bool 
isElement _ [] = False
isElement n (x:xs) = if n==x then True else isElement n xs


-- Basic Drill 3: duplicate
-- Goal is to duplicate values of a list
duplicate :: [Integer] -> [Integer]
duplicate [] = []
duplicate myList = [head myList] ++ [head myList] ++ duplicate(tail myList)
-- line above makes a list with the currect value of list + current value of list + recusion call the smaller list

-- Basic Drill 4: removeDuplicate
-- Goal given a sorted list remove duplicated elements
removeDuplicate :: [Integer] -> [Integer]
removeDuplicate [] = []
removeDuplicate (x: xs) --seperate the head into list x and tail into list xs
    | x `elem` xs = removeDuplicate xs --check if x list (head) is in list xs(tail) if removeDuplicate on xs
    | otherwise = x : removeDuplicate xs --otherwise add x to the the xs list

--Basic Drill 5: rotate
--Goal shfit leter arround based on an integer value 
rotate:: String -> Int -> String 
rotate xs n = take len . drop(n `mod` len) . cycle $ xs
    where len = length xs

--Baic Drill 6: flatten
-- given a list of list form a single list of the concatination
flatten :: [[Integer]] -> [Integer]
flatten [] = []
flatten myList = head myList ++ flatten(tail myList)

--Basic Drill 7: palindrome
--goal see if a list is a palidrome
isPalindrome :: String -> Bool 
isPalindrome [] = True
isPalindrome (x:[]) = True
isPalindrome x = if head x /= last x then False  else isPalindrome( tail (init x))

--Basic Drill 8: Eucidan Formula
--goal to see two ints wether they are coprime
coprime :: Integer -> Integer -> Integer
--coprime x y = gcd x y
coprime x y = if x `mod` y == 0 then y else coprime y (mod x y)

{-THIS IS THE END OF BASIC DRILL -}


{-THIS IS THE START OF AHHH -}

--check if the aaah in string one is longer then aaah in string two
--maybe drop the h and then loop through recusivly to see if is longer, or just check the string lengths
seeDoctor:: String -> String -> Bool 
seeDoctor [] [] = False
seeDoctor doctor patient = if length doctor < length patient && not ('A' `elem` patient) && not ('H' `elem` patient) && ('A' `elem` doctor) && ('H' `elem` doctor) then True else False

{-THIS IS THE END OF AHHH-}


{-THIS IS THE START OF WATER GATE-}

--this function will create a list of false based on N
waterGate:: Integer -> Integer 
waterGate n = countOpenGates (looper ( [False | x <- [1..n]] ) 1 n) 0

--this will count the open gates
countOpenGates:: [Bool] -> Integer ->Integer
countOpenGates [] counter = counter
countOpenGates (x:xs) counter = if x then countOpenGates xs (counter+1) else countOpenGates xs counter

--this is the outerloop which goes through the days
--i will count up
looper:: [Bool] -> Integer ->Integer -> [Bool]
looper myList _ 0= myList
looper myList i stopper= looper (flip12 myList 1 i) (i+1) (stopper -1)


--this is the inner loop which checks each time 
flip12 :: [Bool] -> Integer-> Integer -> [Bool]
flip12 [] _ _ = []
flip12 (x:xs) n i = if(mod n i == 0) then (not x):flip12 xs (n+1) i else x:flip12 xs (n+1) i

{-THIS IS THE END OF WATERGATE-}


{-THIS IS THE START OF GOLDBACHS OTHER CONJECTURE-}

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

--makes the list of infinite primes based on isPrime
listOfPrimes:: [Integer]
listOfPrimes  = [k | k<-[1..], isPrime k]

--this function will generate an infinite list of compisite numbers
listOfComposite:: [Integer]
listOfComposite  = [k | k<-[2..], not (isPrime k), odd k]

--this function will loop through a list of composite numbers to check when the conjecture is false
compositeLooper:: [Integer] -> Bool -> Integer 
--compositeLooper ans False = head ans
compositeLooper (x:xs) isStopped = if not (loopOfPrimes listOfPrimes x) then x else compositeLooper xs (loopOfPrimes listOfPrimes x)

goldBach:: Integer 
goldBach = compositeLooper listOfComposite True

{-THIS IS THE END OF GOLDBACHS OTHER CONJECTURE-}
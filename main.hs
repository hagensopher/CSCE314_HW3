
-- Basic Drill 1 Reverse a lsit
-- Goal is to flip the list
myReverse :: [Integer] -> [Integer]
myReverse [] = []
myReverse listOut = myReverse(tail listOut) ++ [head listOut]


-- Basic Drill 2: isElement
-- Goal is to see if the value is in the list
isElement :: Integer -> [Integer] -> Bool 
isElement _ [] = False
isElement x (y:myList) -- (x:y) syntax means x in one list and y in another list without x (good for recursion)
    | y == x = True --if y == x we then set True
    | otherwise = isElement x myList --otherwise we do this (call the function again with the same value but a shorter list?)


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
coprime x y = gcd x y
--coprime x y = if x `mod` y == 0 then y else coprime(1 1)

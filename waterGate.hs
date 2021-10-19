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
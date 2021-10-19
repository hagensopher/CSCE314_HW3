--changing the state of gates from 0 to 1 (close and open)
-- day one open all
-- day two close every second gate (even gates)
--day three close every third gate (i % 3 ==0)
-- day ith change the ith gate (day 4 would change the 4th gate)
--final day change the last gate
numofGatesOpen = 0
waterGate :: Int -> Int 
waterGate 0 = 0
{--waterGate 1 = 1
waterGate 2 = 2
waterGate 3 = 3
--}
-- waterGate n   --this is the one where the ith and nth case should happen
{--
waterGate n 
    | n == n-(n-1) = n + waterGate(n-1)
    | n == n-(n-2) =  mod (n+1) 2 - waterGate(n-1) 
    | n == n-(n-3) = if mod (n+2) 6 == 0 then waterGate(n-1) else 1- waterGate(n-1)
    | otherwise = if mod n 2 == 0 && mod n 3 /= 0 then 1 + waterGate(n-1) else 1- waterGate(n-1)
--}

 -- waterGate n = waterGateHelper(replicate (n False) 0)
    --make a list 
waterGateHelper :: [Bool] -> Int -> [Bool]
waterGateHelper myList n
    | n == 1 = waterGateHelper(replicate length myList True n+1)
    | n == 2 = waterGateHelper( [odd x | x <- [1..(length myList)]] n+1)
    -- | n == 3 = waterGateHelper( [True | mod ])
    -- n == length myList = //flip the last and return?
    | otherwise = [True,False,True]
    

falseList n  = [ False | x <- [1..n]]
flipBools :: [Bool] -> Int -> [Bool]
flipBools myList n = []
-- faselList = false:falseList //makes an infinite list of false
-- getNFasle = take n falseList //grab the first 10 false

flip12 :: [Bool] -> Integer -> [Bool]
flip12 [] _ = []
flip12 (x:xs) i = if (i==12) then not x : flip12(xs i+1) else x:flip12(xs i+1)


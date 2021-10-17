--changing the state of gates from 0 to 1 (close and open)
-- day one open all
-- day two close every second gate (even gates)
--day three close every third gate (i % 3 ==0)
-- day ith change the ith gate (day 4 would change the 4th gate)
--final day change the last gate
numofGatesOpen = 0
waterGate :: Int -> Int 
waterGate 0 = numofGatesOpen
waterGate 1 = 1
waterGate 2 = 2
waterGate 3 = 3
waterGate n   --this is the one where the ith and nth case should happen
{- waterGate n 
    | n == (n-(n-1)) = let numofGatesOpen = numofGatesOpen in numofGatesOpen + n + waterGate(n-1)
    | n == (n-(n-2)) = let numofGatesOpen =  numofGatesOpen in numofGatesOpen - n `div` 2 + waterGate(n-1)
    | n == (n-(n-3)) = let numofGatesOpen =  numofGatesOpen in numofGatesOpen - n `div` 3 + waterGate(n-1)
    | n == 1 = let numofGatesOpen = numofGatesOpen in numofGatesOpen - 1 + waterGate(n-1)
    | otherwise = let numofGatesOpen = numofGatesOpen in waterGate(n-1)
    -}
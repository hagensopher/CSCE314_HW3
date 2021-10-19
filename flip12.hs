--this is the outerloop which goes through the days
--i will count up
looper:: [Bool] -> Integer ->Integer ->Integer -> [Bool]
looper myList _ _ 0= myList
looper myList n i stopper= looper (flip12 myList 1 i) n (i+1) (stopper -1)


--this is the inner loop which checks each time 
flip12 :: [Bool] -> Integer-> Integer -> [Bool]
flip12 [] _ _ = []
flip12 (x:xs) n i = if(mod n i == 0) then (not x):flip12 xs (n+1) i else x:flip12 xs (n+1) i
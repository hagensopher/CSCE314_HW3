--this is the outerloop which goes through the days
--i will count up
looper:: [Bool] -> Integer -> Integer -> [Bool]
looper myList 0 _ = myList
looper myList n i= looper (flip12 myList i) (n-1) (i+1)


--this is the inner loop which checks each time 
flip12 :: [Bool] -> Integer -> [Bool]
flip12 [] _ = []
flip12 (x:xs) i = if(i==2) then (not x):flip12 xs (i+1) else x:flip12 xs (i+1)
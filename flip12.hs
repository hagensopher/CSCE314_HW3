flip12 :: [Bool] -> Integer -> [Bool]
flip12 [] _ = []
flip12 (x:xs) i = if(i==2) then not x:flip12(xs (i+1)) else x:flip12(xs (i+1))
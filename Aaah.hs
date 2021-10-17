import GHC.Unicode (isLower) --i assume we could use this?
--check if the aaah in string one is longer then aaah in string two
--maybe drop the h and then loop through recusivly to see if is longer, or just check the string lengths
seeDoctor:: String -> String -> Bool 
seeDoctor [] [] = False
seeDoctor s1 s2 = if length s1 < length s2 && all isLower s2 then True else False

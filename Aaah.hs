
--check if the aaah in string one is longer then aaah in string two
--maybe drop the h and then loop through recusivly to see if is longer, or just check the string lengths
seeDoctor:: String -> String -> Bool 
seeDoctor [] [] = False
seeDoctor doctor patient = if length doctor < length patient && not ('A' `elem` patient) && not ('H' `elem` patient) then True else False

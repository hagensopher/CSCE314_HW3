

oddNums:: [Integer]
oddNums = [3,5 .. ]

compositeOdds :: [Integer]
compositeOdds = [n | n <- oddNums, not --prime]

goldbachNum :: Int
goldbachNum = if prime * (2* something^something) is in list of compositeOdds then copmositeOdds else goldbachNum(next prime?)
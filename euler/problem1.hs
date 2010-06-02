{- Sum of all multiples of 3 and 5 below 1000 -}
sumOfMultiples = sum [x | x <- [1..999], mod x 5 == 0 || mod x 3 == 0] 

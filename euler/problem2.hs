{- Find the sum of all the even-valued terms in
- the sequence which do not exceed four million -}
fib 0 = 1
fib 1 = 1
fib x = fib (x-1) + fib (x-2)

{-Every third fibo is even, only calculate those -}
fibsBelowFourMill = takeWhile (<=4000000) $ map fib $ [2,5..]
sumFibsBelow = sum fibsBelowFourMill

{-Tail recursion -}
foldFibs ::(Integral a) => a -> a -> [a] -> [a]
foldFibs prev1 prev2 start
  | prev1 >= 4000000 = start 
  | even prev1 = foldFibs next prev1 (prev1 : start)
  | otherwise = foldFibs next prev1 start
  where next = prev1 + prev2

{- What is the largest prime factor of the number 600851475143? -}
primes :: (Integral a) => [a]
primes = [x | x <- [2..], isPrime x]

isPrime n = foldl (\acc x -> acc && (n `mod` x > 0)) True [2..n-1] 

largestPrimeFactor :: (Integral a) => a -> a
largestPrimeFactor n
  | isPrime n = n
  | otherwise = largestPrimeFactor $ (div n (nextPrime primes n))

nextPrime :: (Integral a) => [a] -> a -> a
nextPrime (x:xs) n 
 | n `mod` x == 0 = x
 | otherwise = nextPrime xs n

{-Alternative by Sartak -}
primeFactorsOf :: Integer -> [Integer]
primeFactorsOf 0 = []
primeFactorsOf 1 = []
primeFactorsOf n = z : primeFactorsOf(n `div` z)
  where z = head $ filter (\d -> n `mod` d == 0) [2..n]

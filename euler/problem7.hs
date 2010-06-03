{- What is the 10001st prime number? -}
primes :: [Integer]
primes = 2 : 3 : primes'
  where 1:p:candidates = [6*k+r | k <- [0..], r <-[1,5]]
        primes' = p : filter isPrime candidates
        isPrime n = all (notDiv n)
                    $ takeWhile (\p -> p*p <= n) primes'
        notDiv a b = a `mod` b /= 0




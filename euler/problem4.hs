{-Find the largest palindrome made from the
- product of two 3-digit numbers. -}

palindromes = [x * y | x <- [999,998..100], y <- [999,998..100], isPalindrome $ show (x * y)]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = (reverse x) == x


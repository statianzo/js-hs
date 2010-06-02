{-Find the difference between the sum of the squares of
- the first one hundred natural numbers and the square of the sum.-}

sumOfSquares = sum $ map (^2) [1..100]
squareOfSum = sum [1..100] ^ 2

difference = squareOfSum - sumOfSquares

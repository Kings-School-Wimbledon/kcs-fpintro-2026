import Data.Array

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- exception handling for n < 0: guards

square :: Int -> Int
square n = n * n

-- lazy evaluation: square 3 vs square (1 + 2) and square (square 2)

tabulate :: Ix i => (i, i) -> (i -> a) -> Array i a
tabulate bounds f = array bounds [(i, f i) | i <- range bounds]

smartFib :: Int -> Int
smartFib n = table ! n
    where
        table :: Array Int Int
        table = tabulate (0, n) memo

        memo :: Int -> Int
        memo 0 = 0
        memo 1 = 1
        memo k = table ! (k - 1) + table ! (k - 2)
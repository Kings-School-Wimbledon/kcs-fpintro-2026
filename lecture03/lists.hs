-- lists: head, tail, pattern matching, append

aList :: [Int]
aList = [1,2,3,4,5,6]
-- head: 1 (first element of the list)
-- tail: [2,3,4,5,6] (all but the first element)

-- pattern matching
firstElem :: [Int] -> Int
firstElem (x:xs) = x

-- write me a function which uses 2d list of list of int
-- and returns the sum of all elements
sum2D :: [[Int]] -> Int
sum2D [] = 0
sum2D (x:xs) = sum x + sum2D xs

-- exercise:
-- Use the built-in function `elem` to write a function twoSame :: [Int] -> Bool that delivers True iff
-- the given list of integers contains at least one duplicate element.
twoSame :: [Int] -> Bool
twoSame (x:xs) = elem x xs || twoSame xs
twoSame [] = False

-- exercise:
-- Polymorphic version of reverse: given a list, return the list in reverse order.
rev :: [a] -> [a]
rev (x:xs) = rev xs ++ [x]
rev [] = []

-- list comprehensions
-- python: [i for i in range(10)] = [0,1,2,3,4,5,6,7,8,9]
-- in haskell:
listComprehen :: [Int]
listComprehen = [i | i <- [0..9], even i]
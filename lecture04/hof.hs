-- higher-order functions
-- a function that takes another function as an argument or returns a function as a result is called

add :: Int -> Int -> Int
add x y = x + y
-- this effectively is add :: Int -> (Int -> Int)
-- takes an Int and returns a function that takes an Int and returns an Int

-- we can use this to create a new function that adds 5 to its argument
add5 :: Int -> Int
add5 = add 5
-- add5 is now a function that takes an Int and adds 5 to it

-- map
-- map takes a function and a list and applies the function to each element of the list
-- map :: (a -> b) -> [a] -> [b]
-- in python: map(lambda x: x + 1, [1,2,3]) = [2,3,4]
-- in haskell:
mapExample :: [Int]
mapExample = map (+1) [1,2,3] -- this will give us [2,3,4]

-- filter
-- filter :: (a -> Bool) -> [a] -> [a]
-- filter takes a function that returns a Bool and a list and returns a list of elements that
-- satisfy the condition
-- in python: filter(lambda x: x % 2 == 0, [1,2,3,4]) = [2,4]
-- in haskell:
filterExample :: [Int]
filterExample = filter even [1,2,3,4] -- this will give us [2,4]

-- note we can do map/filter using list comprehensions as well
listComprehen2 :: [Int]
listComprehen2 = [i | i <- [1..10], even i]
-- this will give us [2,4,6,8,10]

listComprehen3 :: [Int]
listComprehen3 = [i + 1 | i <- [1..10]]
-- this will give us [2,3,4,5,6,7,8,9,10,11]

listComprehen4 :: [Int]
listComprehen4 = [i + 1 | i <- [1..10], even i]
-- this will give us [3,5,7,9,11]

-- concatMap
-- concatMap :: (a -> [b]) -> [a] -> [b]

-- foldl
-- foldl :: (b -> a -> b) -> b -> [a] -> b

-- foldr
-- foldr :: (a -> b -> b) -> b -> [a] -> b
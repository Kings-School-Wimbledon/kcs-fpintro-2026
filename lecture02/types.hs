-- common types, include tuples
x :: Int
x = 42

c :: Char
c = 'a'

s :: String
s = "hello"

cs :: [Char]
cs = "hello"

b :: Bool
b = True

-- or, and
-- ||, &&

-- custom data structures
data Tree a = Nil | Node a (Tree a) (Tree a)

data IntTree = IntNil | IntNode Int IntTree IntTree

-- polymorphism

-- let and where

-- pattern matching
-- exercise: tree traversal (preorder, inorder, postorder)
preorder :: IntTree -> [Int]
preorder (IntNode x lt rt) = [x] ++ preorder lt ++ preorder rt
preorder IntNil = []

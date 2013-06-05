module BTree
(Tree(..),
	add)
where

data Tree = Node { l::Tree, r::Tree, val::Double }
		  | Null
		  deriving (Show)

add :: Tree -> Double
add Null = 0
add node = (val node) + add (l node) + add (r node)

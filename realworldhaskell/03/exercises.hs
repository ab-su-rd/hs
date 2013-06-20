import Data.List

-- convert custom list type to haskell default list using fromList'
data List' a =
	Cons a (List' a)
	| Nil
	deriving (Show)

fromList' Nil = []
fromList' (Cons x xs) = x : fromList' xs

-- BTree data type with only one value constructor
data BTree a = BTree (Maybe (a, BTree a, BTree a))
	deriving (Show)

-- end of chapter exercises --
-- 01 - length of a list
length' :: [a] -> Int -- 02 - type signature
length' [] = 0
length' (x:xs) = 1 + length' (xs)
	
-- 03 - mean of a list
mean' :: Fractional a => [a] -> a
mean' [] = 0
mean' x = sum x / fromIntegral (length x)

-- 04 - list to palindrome
intoPali :: [a] -> [a]
intoPali [] = []
intoPali (x:xs) = x : intoPali xs ++ [x]

-- 05 - determine if input is palindrome
pali :: Eq a => [a] -> Bool
pali [] = True
pali (x:[]) = True
pali (x:xs)
	| x == last xs 	= pali (init xs)
	| otherwise 	= False

-- 06 - sort a list of lists by their length
sortLists :: [[a]] -> [[a]]
sortLists lst = sortBy compLength lst
	where
		compLength a b = compare (length a) (length b)

-- 07 - join list of lists using seperator value
intersperse' :: a -> [[a]] -> [a]
intersperse' _ [] = []
 -- condition to avoid printing sep at the end
intersperse' _ (x:[]) = x
 -- avoid printing sep on empty list
intersperse' sep ([]:xs) = intersperse' sep xs
-- case statement makes sure we don't print sep if last element is []
intersperse' sep (x:xs) = x ++ case (intersperse' sep xs) of
	[] -> []
	ys -> sep : ys

-- 08 - height of BTree
heightBTree :: BTree a -> Int
heightBTree (BTree (Nothing)) = 0
heightBTree (BTree (Just (val, left, right)))
	| leftHeight > rightHeight	= 1 + leftHeight
	| otherwise					= 1 + rightHeight
	where
		leftHeight 	= heightBTree left
		rightHeight	= heightBTree right

-- 09 - direction data type
data Direction =
	Straight
	| left
	| Right
	deriving (Eq, Show)

-- 10 - did not implement the direction finding function (ambiguous)
-- 11, 12 - math
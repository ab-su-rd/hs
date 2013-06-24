-- p01 - last element of a list
last' :: [a] -> Maybe a
last' [] = Nothing
last' [x] = Just x
last' (_:xs) = last' xs

-- p02 - last but one element
butLast :: [a] -> Maybe a
butLast [] = Nothing
butLast [_] = Nothing
butLast (x:y:[]) = Just x
butLast (_:xs) = butLast xs

butLast' x = last (init x)

-- p03 - kth element
kthElem :: (Eq a, Num a) => a -> [b] -> Maybe b
kthElem _ [] = Nothing
kthElem 1 (x:_) = Just x
kthElem k (x:xs) = kthElem (k-1) xs

-- p04 - number of elements in a list
length' :: Num b => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- p05 - reverse a list
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- p06 - is the list a palindrome
pali' :: Eq a => [a] -> Bool
pali' [] = True
pali' [_] = True
pali' (x:xs)
	| x == last (xs) = pali' (init xs)
	| otherwise = False

-- p07 - flatten a list
-- needs a custom data type

-- p08 - eleminate consecutive duplicates
compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs)
	| x == y = compress (x:xs)
	| otherwise = [x] ++ compress (y:xs)

-- p09 - pack consequtive duplicates into sublists
{-
pack [] = []
pack [x:[]) = [[x]]
pack (x:y:xs)
	| x == y = 
-}

-- p10 - run length encode a list

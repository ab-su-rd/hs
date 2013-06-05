pali :: (Eq a) => [a] -> Bool
pali [] 	= True
pali [x] 	= True
pali (x:xs) = (x == last xs) && pali (init xs)

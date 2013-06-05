zip' :: [a] -> [b] -> [(a,b)]
zip' [] [] = []
zip' x [] = []
zip' [] x = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

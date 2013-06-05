map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = (f x) : (map' f xs)

pi' :: Int -> Double
pi' n = sum (map greg [1..n])

greg :: Int -> Double
greg x = 4 * (-1)^(x+1) / (2.0*k - 1)
	where k = fromIntegral x

filter' :: (a -> Bool) -> [a] -> [a]
filter' f [] = []
filter' f (x:xs)
	| (f x) = x : filter' f xs
	| otherwise = filter' f xs

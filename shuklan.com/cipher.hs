succn :: Char -> Int -> Char
succn x 0 = x
succn x n = if x=='z' then succn 'a' (n-1)
			else succn (succ x) (n-1)

cipher :: [Char] -> Int -> [Char]
cipher [] _ = []
cipher (x:xs) n = succn x n : cipher xs n

{-
	:t False	-> Bool
	:t (["abc", "def"], 'a')	-> ([[Char]], Char)
	:t [(True, []), (False, [['a']])]	-> [(Bool, [[Char]])]
-}

add a b = a + b

drop' n xs =
	if n <= 0 || null xs
	then xs
	else drop' (n-1) (tail xs)

odd' n = n `mod` 2 == 1

lastButOne xs = last (init xs)

lastButOne' xs =
	if length xs < 2
	then Nothing
	else Just (last (init xs))
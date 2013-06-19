main = interact wordCount
	where wordCount input = show (length (lines input) ++ "\n"

{-
	:t 5+8	-> Num a
	:t sqrt 16	-> Floating a
	:t succ 5	-> (Enum a, Num a)
	:t truncate pi	-> Integral b
	:t round 3.5	-> Integral b

	-- counting words
	main = interact wordCount
		where wordCount input = show (length (words input) ++ "\n"

	-- counting characters
	main = interact wordCount
		where wordCount input = show (length input) ++ "\n"
-}
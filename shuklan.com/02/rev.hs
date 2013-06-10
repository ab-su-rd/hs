rev [] = []
rev xs = last xs : rev (init xs)

rev1 [] = []
rev1 xs = rev (tail xs) ++ [head xs]

rev2 [] = []
rev2 (x:xs) = rev2 xs ++ [x]

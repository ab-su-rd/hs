
main = do
	readFile "input.txt" >>= writeFile "output.txt" . reverse


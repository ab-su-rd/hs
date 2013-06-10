
module Main where

import Data.Char
import Data.List

-- |password strength checker function
strong x = length x > 14
		 && any isLower x
		 && any isUpper x
		 && any isDigit x

-- | Main - uses the strength checker function above to determine
-- if the input password is strong
main = do
	putStrLn "input password:" 
	getLine >>= print . strong
	main


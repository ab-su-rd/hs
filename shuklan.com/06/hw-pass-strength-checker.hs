import Data.Char
import Data.List

strong x = length x > 14
		 && any isLower x
		 && any isUpper x
		 && any isDigit x

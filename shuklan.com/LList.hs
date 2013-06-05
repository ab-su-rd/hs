module LList
(LList(..),
	add)
where

data LList = LList { val::Double, next::LList }
		   | Null
		   deriving (Show)

add :: LList -> Double
add Null = 0
add ll = (val ll) + add (next ll)

insert :: LList -> LList
insert Null Null = Null
insert Null ll = ll
insert ll Null = ll
insert ll llnext = 

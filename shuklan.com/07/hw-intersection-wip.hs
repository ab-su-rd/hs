

-- line def:: y = m * x + c
data Line = L {m::Double, x::Double, c::Double}
		  | L {x::Double, c::Double}
		  | L {x::Double}
		  deriving (Show, Eq)

intersection l1 l2
	| (m l1) == (m l2) = error "lines are parallel!"
	| otherwise        = 

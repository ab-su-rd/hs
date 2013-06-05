conv :: (Double,[Char]) -> (Double,[Char])
conv (val,typ)
	| typ == "m"	= (val*1.09361,"yd")
	| typ == "l"	= (val*0.264172,"gal")
	| typ == "kg"	= (val*2.20462,"lb")
	| typ == "yd"	= (val/1.09361,"m")
	| typ == "gal"	= (val/0.264172,"l")
	| typ == "lb"	= (val/2.20462,"kg")
	| otherwise		= error "unknown type"

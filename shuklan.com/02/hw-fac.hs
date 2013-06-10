fac 1 = 1
fac n = n * fac (n-1)

fac2 = (\(n) ->
		(if ((>) n 1)
			then (*) n (fac2 ((-) n 1))
			else 1))

fac3 n = product [1..n]

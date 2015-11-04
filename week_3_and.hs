blf = [True, True, False]
blt = [True, True, True]

and0 [] = False
and0 (b : bs) = b && and bs

and1 [] = True
and1 (b: bs)
	| b = and1 bs
	| otherwise = False
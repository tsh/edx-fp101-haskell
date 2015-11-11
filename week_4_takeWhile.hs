p x = x < 5
xs = [3,4,5,6,2,4]

takeWhile2 _ [] = []
takeWhile2 p (x:xs)
	| p x = x : takeWhile2 p xs
	| otherwise = []
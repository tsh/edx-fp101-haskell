ls = [1,2,3,4,5,6]


halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop (n+1) xs)
	where n = length xs `div` 2
ts = [True, True]
fs = [False, False]
tfs = [True, False]

p v = v

-- any1 p = map p . or

any2 p = or . map p

any4 p = not . null . dropWhile (not . p)

any5 p = null . filter p

any7 p xs = foldr (\ x acc -> (p x) || acc ) False xs

any8 p xs = foldr (||) True (map p xs)
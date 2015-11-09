ts = [True, True, True]
fs = [False, False, False]
tfs = [True, False, True]
p :: Bool -> Bool
p x = x

all1 p xs = and (map p xs)

all4 p = not . any (not . p)

all6 p xs = foldl (&&) True (map p xs)

all7 p xs = foldr (&&) False (map p xs)

all8 p = foldr (&&) True . map p
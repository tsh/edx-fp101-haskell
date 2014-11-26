ls = [1..10]

inc x = x + 1

map f = foldl (\ xs x  -> xs ++ [f x]) []

filter :: (a -> Bool) -> [a] -> [a]
filter p = foldr (\ x xs -> if p x then x: xs else xs) []

dec2int = foldl (\x y -> x*10 + y) 0

tpl :: (Integer, Integer) -> Integer
tpl (x, y) = x + y

curry f = \ x y -> f (x, y)
ls = [[1,2,3,4], [55,66,77]]

concat1 [] = []
concat1 (xs: xss) = xs ++ concat1 xss
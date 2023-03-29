sumaPrimeros :: Num a => [a] -> [a]
sumaPrimeros [] = []
sumaPrimeros [x] = [x]
sumaPrimeros s@(x1 : x2 : xs) = (x1 + x2) : s

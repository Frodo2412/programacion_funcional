sumSqs :: Num a => [a] -> a
sumSqs = foldl (\x acc -> x * x + acc) 0
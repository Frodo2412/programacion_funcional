elem :: Eq a => a -> [a] -> Bool

elem item = foldr (\x acc -> (x == item) || acc) False
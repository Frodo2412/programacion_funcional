h :: (Num a, Foldable t) => a -> t a -> a
h x xs = x - sum xs

a = h 1 [1,2,3] == foldr (-) 1 [1,2,3]

b = h 1 [1,2,3] == foldl (-) 1 [1,2,3]

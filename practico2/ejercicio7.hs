mapA :: (a -> b) -> [a] -> [b]
mapA f lista = [f y | y <- lista]

filterA :: (a -> Bool) -> [a] -> [a]
filterA f lista = [ x | x <- lista, f x ]
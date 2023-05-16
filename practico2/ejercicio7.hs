import Prelude hiding (map, filter)

map :: (a -> b) -> [a] -> [b]
map f lista = [f y | y <- lista]

filter :: (a -> Bool) -> [a] -> [a]
filter f lista = [ x | x <- lista, f x ]

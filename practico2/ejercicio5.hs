import Prelude hiding (flip)

flip :: (a -> b -> c) -> (b -> a -> c)
flip f x y = f y x
-- flip f = (\x -> (\y -> f y x))

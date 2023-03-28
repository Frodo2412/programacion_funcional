twice :: (a -> a) -> (a -> a)
twice f = f . f

x = twice tail [1, 2, 3, 4] -- [3,4]

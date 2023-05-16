twice :: (a -> a) -> (a -> a)
twice f = f . f

x = twice tail [1, 2, 3, 4] -- [3,4]

-- y = twice head no compila porque no recibe el mismo tipo que devuelve (va de lista a elemento)

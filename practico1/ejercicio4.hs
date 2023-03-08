{- Defina al conectivo ĺogico implicacion como un operador de tipo Bool. -}

(<==>) :: Bool -> Bool -> Bool
x ==> y = not x || y

{-Defina la funcion length en terminos de map y sum-}

lengthA :: [a] -> Int
lengthA lista  = sum (map (\x -> 1) lista )
{-Usando map, defina una funcion squares :: [Int ] → [Int ] que dada una lista 
de enteros retorne una lista con los cuadrados de los elementos de la lista-}


squares :: [Int] -> [Int]
squares = map (\x -> x * x)

squaresGenerico :: Num a => [a] -> [a]
squaresGenerico = map (\x -> x * x)

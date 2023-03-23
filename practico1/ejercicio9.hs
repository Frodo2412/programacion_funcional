{-
Todo numero entero x se puede descomponer de manera unica en terminos de dos numeros enteros y y z, tales que:
• −5 < y <= 5
• x = y + 10 × z.
Defina una funcion que dado un entero x devuelve una tupla con los numeros y y z.
-}


descomponer :: Int -> (Int, Int)
descomponer x =
    let 
    unidades = x `mod` 10
    in if (unidades <= 5) then (unidades, x `div` 10)
    else (unidades - 10, x `div` 10 + 1)

{-
Defina la funcion mkTriangulo que dados tres enteros positivos, 
que representan a los lados de un triangulo valido, retorna un valor de tipo Triangulo.
-}

data Triangulo = Equi Int | Isoceles Int Int | Escaleno Int Int Int
    deriving(Show, Eq)

mkTriangulo :: Int -> Int -> Int -> Triangulo
mkTriangulo a b c
    | (a == b) && (b == c) = Equi a
    | (a == b) = Isoceles a c
    | (a == c) = Isoceles a b
    | (b == c) = Isoceles b a
    | otherwise = Escaleno a b c
{-
Deseamos representar pares internamente ordenados, que son pares de numeros reales (r, s) tales que r <= s.

(a) Defina el tipo de los pares ordenados
(b) Defina una funcion que dado un par de reales cualesquiera retorna un par internamente ordenado.
(c) Defina la operacion de suma de pares internamente ordenados, que suma las correspondientes componentes de dos pares retornando un nuevo par.
(d) Defina la operacion de multiplicaci ́on por un escalar, que dado un real y un par internamente ordenado multiplica la primera componente del par por el escalar. 
El resultado debe ser un par internamente or- denado. Si se pierde el orden se deben intercambiar las componentes.

-}

type ParOrdenado = (Float, Float)

hacerPar :: Float -> Float -> ParOrdenado
hacerPar x y = if x <= y then (x, y)
                else (y, x)

suma :: ParOrdenado -> ParOrdenado -> ParOrdenado
suma (x1, y1) (x2, y2) = hacerPar x1+x2 y1+y2

mult :: Float -> ParOrdenado -> ParOrdenado
mult a (x, y) = hacerPar x * a y

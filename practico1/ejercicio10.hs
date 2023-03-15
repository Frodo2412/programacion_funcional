{-

Deseamos representar numeros racionales y operaciones sobre ellos. 
Los racionales son representados por pares de enteros cuya segunda compo- nente es distinta de cero. 
Cada racional tiene infinitas representaciones, pero existe la llamada representacion canonica en 
la que la segunda componente del par de enteros es mayor que cero y ambos enteros son primos entre si.

(a) Defina el tipo racional
(b) Defina una funcion que dado un par de enteros, el segundo de los cuales es distinto de cero, 
retorne un racional en su representacion canonica.
(c) Defina las operaciones de suma, resta, multiplicacion, y negacion de racionales, e int2rac, que convierte un entero en un 
racional. Dichas operaciones deben devolver representaciones canonicas como resultado.
Nota: Puede usar la funcion gcd (definida en el Prelude) la cual computa el maximo comun divisor de dos numeros.

-}

data Racional = Racional Int Int

armarRacional :: Int -> Int -> Racional
armarRacional a b = 
    if b < 0 then Racional (a * (-1)) (b * (-1))
    else Racional a b

suma :: Racional -> Racional -> Racional
suma (Racional r1 r2) (Racional r3 r4) = 
    let
        mcm = gcd r2 r4
        a = r1 * r4
        b = r3 * r2
        n = a `div` mcm
        d = b `div` mcm
    in armarRacional (n+d) mcm

prod :: Racional -> Racional -> Racional
prod (Racional r1 r2) (Racional r3 r4) = 
    let
        a = r1*r3
        b = r2*r4
    in armarRacional a b

negate :: Racional -> Racional
negate (Racional a b) = 
    let 
        n = (a * (-1))
    in armarRacional n b

int2rac :: Int -> Racional
int2rac a = armarRacional a 1

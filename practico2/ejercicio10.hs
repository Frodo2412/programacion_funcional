{-10. Usando filter , defina:
(a) Una funcion all :: (a → Bool) → [a ] → Bool que dada una condicion y una lista,
verifique si todos los elementos de la lista cumplen con dicha condicion. Ejemplos:
all (>0) [1, 2, 3] retorna True
all (≡ ’a’) [’a’, ’b’, ’c’] retorna False
-}

import Prelude hiding (all,elem)

all ::  (a -> Bool) -> [a] -> Bool
all f lista = length(filter f lista) == length(lista)

{-(b) Una funcion elem :: Eq a ⇒ a → [a ] → Bool que determina si un elemento pertenece a una lista. 
Ejemplos:
elem 2 [1, 2, 3] retorna True
elem ’a’ [’b’, ’c’] retorna False-}


elem :: Eq a => a -> [a] -> Bool
elem x lista = length(filter (== x) lista) > 0
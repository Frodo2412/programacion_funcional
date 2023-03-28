dup :: a -> (a,a)
dup x = (x,x)

-- Pegando los caños, entonces recibo un caño mas grande
f :: a -> ((a, a), (a, a))
f = dup . dup

-- Estoy pasando como parametro un caño entonces recibo una tupla de caños
g :: (a -> (a, a), a -> (a, a))
g = dup dup

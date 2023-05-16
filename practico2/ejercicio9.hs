{-Defina la funcion length en terminos de map y sum-}

import Prelude hiding (length)

length :: [a] -> Int
length lista  = sum (map (const 1) lista )

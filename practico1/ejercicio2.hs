analyze :: Int -> Int -> Int -> Boolean
analyze x y z = if x < y + z then True
                else if y < x + z then True
                else if z < x + y then True
                else False
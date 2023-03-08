
sumsqrs :: Int -> Int -> Int -> Int
sumsqrs x y z = if x <= y && x <= z then z * z + y * y else
                if y <= x && y <= z then x * x + z * z
                else x * x + z * z

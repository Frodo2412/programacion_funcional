{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use first" #-}
{-# HLINT ignore "Use second" #-}

sumSqr :: Num a => [a] -> a
sumSqr = foldr (\x y -> x * x + y) 0

elimDups :: Eq a => [a] -> [a]
elimDups = foldr (\x y -> if x == head y then y else x : y) []

split :: [a] -> ([a], [a])
split = foldr (\x y -> if length (fst y) == length (snd y) then (x : fst y, snd y) else (fst y, x : snd y)) ([], [])
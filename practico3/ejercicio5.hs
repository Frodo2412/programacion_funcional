sumsSqs :: Num a => [a] -> a
sumsSqs = sumAccum 0 
  where
    sumAccum x [] = x
    sumAccum i (x : xs) = sumAccum (i + x) xs

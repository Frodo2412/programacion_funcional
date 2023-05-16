{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use bimap" #-}
{-# HLINT ignore "Use foldr" #-}
import Prelude hiding (elem)

sumSqs :: Num a => [a] -> a
sumSqs [] = 0
sumSqs (x : xs) = x * x + sumSqs xs

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem x (y : ys) = (x == y) || elem x ys

elimDups :: Eq a => [a] -> [a]
elimDups [] = []
elimDups [x] = [x]
elimDups [x, y] = if x == y then [x] else [x, y]
elimDups (x : y : xs) = if x == y then elimDups (y : xs) else x : elimDups (y : xs)

split :: [a] -> ([a], [a])
split [] = ([], [])
split [x] = ([x], [])
split (x : y : xs) = (x : fst rest, y : snd rest)
  where
    rest = split xs

maxInd :: Ord a => [a] -> (a, Int)
maxInd (x : xs) = accum x 0 xs
  where
    accum item i [] = (item, i)
    accum item i (y : ys) = if y > item then accum y (i + 1) ys else accum item i ys

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge xs [] = xs
merge [] ys = ys
merge left@(x : xs) right@(y : ys) = if x < y then x : merge xs right else y : merge left ys

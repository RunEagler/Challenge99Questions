module Problem34 where

coprime::Int -> Int -> Bool
coprime x y = gcd x y == 1

tocient::Int -> Int
tocient n = length [x | x <- [1..n], coprime x n]

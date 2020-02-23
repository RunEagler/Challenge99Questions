module Problem32 where

gcd'::Int -> Int -> Int
gcd' a b | b == 0 = abs a
         | otherwise = gcd' b (a `mod` b)
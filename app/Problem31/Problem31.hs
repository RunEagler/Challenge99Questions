module Problem31 where

isPrime1::Int -> Bool
isPrime1 n = and [n `mod` x /= 0| x <- [2..(n-1)]]

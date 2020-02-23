module Problem36 where

import Data.List (group)

primeFactors n = primeFactors' n 2
    where
      primeFactors' 1 _ = []
      primeFactors' n x | n `mod` x == 0 = x:primeFactors' (n `div` x) x
                        | otherwise = primeFactors' n (x+1)


--prime_compression::Int -> [(Int,Int)]

prime_compression::Int -> [(Int,Int)]
prime_compression = map compression . group . primeFactors
  where compression xs = (head xs, length xs)
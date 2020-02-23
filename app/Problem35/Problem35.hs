module Problem35 where

primeFactors n = primeFactors' n 2
    where
      primeFactors' 1 _ = []
      primeFactors' n x | n `mod` x == 0 = x:primeFactors' (n `div` x) x
                        | otherwise = primeFactors' n (x+1)
                      
                
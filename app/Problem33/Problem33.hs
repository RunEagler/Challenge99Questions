module Problem33 where


--divisor::Int -> [Int]
--divisor n = [x | x <- [2..n], n `mod` x == 0]

coprime::Int -> Int -> Bool
coprime x y = gcd x y == 1
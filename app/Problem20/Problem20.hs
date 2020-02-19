module Problem20 where

removeAt1::Int -> [a] -> (a,[a])
removeAt1 n xs = (xs !! (n-1), take (n-1) xs ++ drop n xs)

removeAt2::Int -> [a] -> (a,[a])
removeAt2 n (x:xs) | n > 0 = let (f,p) = removeAt2 (n-1) xs in (f,x:p)
                   | otherwise = (x,xs)

safeRemoveAt::Int -> [a] -> (Maybe a,[a])
safeRemoveAt _ [] = (Nothing, [])
safeRemoveAt 1 (x:xs) = (Just x, xs)
safeRemoveAt n (x:xs) = (a, x:b)
            where (a, b) = safeRemoveAt (n-1) xs
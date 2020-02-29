module Problem3 where

elementAt1::[a] -> Int -> a
elementAt1 xs x = xs !! (x-1)

elementAt2::[a] -> Int -> a
elementAt2 (x:_) 0 = x
elementAt2 (x:xs) n = elementAt2 xs (n-1)

safeElementAt::[a] -> Int -> Maybe a
safeElementAt xs x | length xs <= x = Nothing
                   | x <= 0 = Nothing
                   | otherwise = Just(xs !! (x-1))
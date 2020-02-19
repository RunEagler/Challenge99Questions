module Problem18 where

slice::[a] -> Int -> Int -> [a]
slice xs m n = take (n-m) $ drop m xs

slice1::[a] -> Int -> Int -> [a]
slice1 _ 0 0 = []
slice1 (x:xs) 0 n = x:slice1 xs 0 (n-1)
slice1 (x:xs) m n = slice1 xs (m-1) (n-1)

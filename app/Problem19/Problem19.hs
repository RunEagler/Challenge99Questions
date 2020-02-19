module Problem19 where

rotate::[a] -> Int -> [a]

rotate xs n | n > 0 = drop n xs ++ take n xs
            | otherwise = drop k xs ++ take k xs 
              where k = (length xs) + n
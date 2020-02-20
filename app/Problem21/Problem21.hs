module Problem21 where

insertAt1::a -> [a] -> Int -> [a]
insertAt1 r xs n = take n xs ++ [r] ++ drop n xs

insertAt2 r xs 0 = r:xs
insertAt2 _ [] _ = []
insertAt2 r (x:xs) n = x: insertAt2 r xs (n-1)
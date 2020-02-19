module Problem16 where


dropEvery1::[a] -> Int -> [a]
dropEvery1 xs n = helper xs n
  where helper [] _ = []
        helper (x:xs) 1 = helper xs n
        helper (x:xs) k = x:helper xs (k-1)

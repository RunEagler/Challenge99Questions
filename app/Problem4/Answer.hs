module Problem4 where


length1'::[a] -> Int
length1' [] = 0
length1' (x:xs) = 1 + length1' xs

length2'::[a] -> Int
length2' xs = length' xs 0
    where
      length' [] n = n
      length' (_:xs) n = length' xs n+1

length3'::[a] -> Int
length3' = foldl (\acc _ -> acc+1) 0
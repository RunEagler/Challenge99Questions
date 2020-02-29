module Answer where

reverse1::[a] -> [a]
reverse1 [] = []
reverse1 (x:xs) = reverse1 xs ++ [x]

reverse2::[a] -> [a]
reverse2 = foldl (\acc x -> x:acc) []
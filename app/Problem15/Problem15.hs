module Main where




repli1::[a] -> Int -> [a]
repli1 [] y = []
repli1 (x:xs) y = [x |_ <- [1..y]] ++ repli1 xs y

repli2::[a] -> Int -> [a]
repli2 xs p = foldl (\acc x -> acc ++ replicate p x) [] xs

main = do
  print $ repli2 [1,2,3] 3
module Main where


dupli1 [] = []
dupli1 (x:xs) = x:x:dupli1(xs)

dupli2 xs = concat[[x,x] | x <- xs]

dupli3 = foldl (\acc x -> acc ++ [x,x]) []
dupli4 = concatMap (\x -> [x,x])

dupli5 = foldr (\x acc -> x:x:acc) []

main = do
  print $ dupli3 [1,1,1,2,2]
  print $ dupli4 [1,1,1,2,2]
  print $ dupli5 [1,2,3,4]
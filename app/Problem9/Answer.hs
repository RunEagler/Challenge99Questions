module Problem9 where

pack1::Eq a => [a] -> [[a]]
pack1 (x:xs) = let (first,rest) = span (==x) xs
  in (x:first) : pack1 rest
pack1 [] = []

pack2::Eq a => [a] -> [[a]]
pack2 [] = []
pack2 y@(x:xs) = (takeWhile (==x) y): pack2 (dropWhile (==x) xs)
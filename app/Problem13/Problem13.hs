module Main where

import Data.List

data Item a = Single a | Multiple Int a deriving (Show)
encode'::Eq a => [a] -> [(Int,a)]
encode' = foldr helper []
  where
    helper x [] =[(1,x)]
    helper x (y@(a,b):ys)
      | x == b = (1+a,x):ys
      | otherwise = (1,x):y:ys

encodeDirect::Eq a => [a] -> [Item a]
encodeDirect = map helper2 . encode'
  where
    helper2 (1,x) = Single x
    helper2 (n,x) = Multiple n x

main = do
  print $ encodeDirect "aaaabbbccd"
module Main where

import Data.List

data Item a = Single a | Multiple Int a deriving (Show)
decode::Eq a => [Item a] -> [a]
decode [] = []
decode (x:xs) = case x of
      (Multiple n x) -> [x | _ <- [1..n]] ++ decode xs
      (Single x) -> [x] ++ decode xs

main = do
  print $ decode [Multiple 3 'a',Single 'b',Multiple 4 'c',Single 'd']
  print $ decode [Multiple 3 'a',Single 'b',Multiple 4 'c',Single 'd']
  print $ decode [Multiple 2 'a',Multiple 2 'b',Multiple 2 'c',Multiple 2 'd']

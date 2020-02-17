module Main where

import Data.List

data Item a = Single a | Multiple Int a deriving (Show)


encode::Eq a => [a] -> [Item a]
encode xs = map (\x -> if (length x) == 1 then Single (head x) else Multiple (length x) (head x)) $ group xs


main = do
  print $ encode "aaabccccd"
  print $ encode "abcd"
  print $ encode "aabbccdd"
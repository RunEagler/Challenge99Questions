module Main where

import Data.List

encode::Eq a => [a] -> [(Int,a)]
encode xs = map (\x -> (length x,head x)) $ group xs

encode2 xs = [(length x,head x) | x <- group xs]

main = do
  print $ encode "aaabbbbccccd"
  print $ encode2 "aaabbbbccccd"
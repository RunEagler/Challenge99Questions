module Main where

import Data.List (group)


pack [] =[]
pack (x:xs) = (x:takeWhile(==x)xs):pack(dropWhile(==x)xs)

main = do
    print $ pack ['a','a','b','b','c','d','a','a','a']
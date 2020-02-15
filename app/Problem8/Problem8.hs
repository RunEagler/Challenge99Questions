module Main where

import Data.List (group)


compress::Eq a =>[a]->[a]

compress = map head .group

test1 = "aaaabbbccd"
test2 = "aaabbbaaaabd"
test3 = "bbbbbb"
test4 = "abcd"


main = do
    print $ compress test1
    print $ compress test2
    print $ compress test3
    print $ compress test4
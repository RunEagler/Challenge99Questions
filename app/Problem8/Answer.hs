module Problem8 where

import Data.List (group)

compress1::Eq a => [a]->[a]
compress1 = map head . group

compress2::Eq a => [a]->[a]
compress2 (x:xs) = x:(compress2 $ dropWhile (== x) xs)
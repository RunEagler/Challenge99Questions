module Problem10.Answer where

import Data.List (group)

encode1::Eq a => [a] -> [(Int,a)]
encode1 = map (\x -> (length x,head x)) <$> group


encode2 xs = [(length g,head g) | g <- group xs]


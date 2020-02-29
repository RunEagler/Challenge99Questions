module Answer where

last1'::[a] -> a
last1' [x] = x
last1' (x:xs) = last1' xs

last2'::[a] -> a
last2' = head . reverse

last3'::[a] -> a
last3' xs = xs !! ((length xs)-1)

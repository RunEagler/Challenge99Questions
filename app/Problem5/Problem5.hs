module Main where

--myReverse [a] = a
myReverse::[a] -> [a]
myReverse [x] = [x]
myReverse (x:xs) = myReverse(xs) ++ [x]

test1 = [1,2,3,4,5]
test2 = "abcdefg"
test3 = [5]

main = do
    print $ myReverse test1
    print $ myReverse test2
    print $ myReverse test3
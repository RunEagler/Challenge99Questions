module Main where


myLast::[a] -> a
myLast = last . init

test1 = [1,2,3,4,5]
test2 = [3]

main = do
    print $ myLast(test1)
    print $ myLast(test2)
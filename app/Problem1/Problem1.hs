module Main where


fact 0 = 1
fact n = n * fact (n - 1)


myLast1::[a] -> a
myLast1 [] = error"No end for emplty list"
myLast1 [x] = x
myLast1 (_:xs) = myLast1 xs


myLast2::[a] -> a
myLast2 = head . reverse

test1 = [1,2,3,4,5]
test2 = [3]

main = do
    print $ myLast1(test1)
    print $ myLast1(test2)
    print $ myLast2(test1)
    print $ myLast2(test2)
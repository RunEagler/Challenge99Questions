module Main where


myLength [] = 0
myLength (x:xs) = 1 + myLength(xs)

test1 = [1,2,3,4,5]
test2 = ["a","b","c"]
test3 = "Apple"
test4 = []
test5 = ""
test6 = [True,False]

main = do
    print $ myLength test1
    print $ myLength test2 
    print $ myLength test3 
    print $ myLength test4 
    print $ myLength test5 
    print $ myLength test6
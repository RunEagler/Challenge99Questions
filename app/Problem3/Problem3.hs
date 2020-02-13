module Main where




elementAt :: [a] -> Int -> a
elementAt list i = list !! (i-1)

test1 = [1,2,3,4,5]

main = do
    print $ elementAt test1 3
    print $ elementAt test1 1
    print $ elementAt test1 5
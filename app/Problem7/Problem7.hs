module Main where

data NList a = X a | List [NList a]
flatten::NList a -> [a]
flatten(X a) = [a]
flatten(List (x:xs)) = flatten x ++ flatten(List xs)
flatten(List []) = []


test1 = List[X 1,List[X 2,List[X 3,List[X 4,X 5]]]]
test2 = List[X 1,List[X 2,List[X 4,List[X 8,List[X 16],X 8],X 4],X 2],X 1]
test3 = List[X "a"]
test4 = List[X 1,X 2,List[X 1,X 2,X 3,List [X 3,X 4]]]

main = do
    print $ flatten test1
    print $ flatten test2
    print $ flatten test3
    print $ flatten test4
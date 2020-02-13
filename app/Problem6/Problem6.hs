module Main where

isPalindrome::(Eq a) => [a]->Bool
isPalindrome a = a == (reverse a)

test1 = [1,2,3]
test2 = "abcba"
test3 = [1,2,4,8,16,8,4,2,1]
test4 = "abbac"

main = do
    print $ isPalindrome test1
    print $ isPalindrome test2
    print $ isPalindrome test3
    print $ isPalindrome test4
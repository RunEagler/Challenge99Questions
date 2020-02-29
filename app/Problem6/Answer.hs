module Problem6 where


isPalindrome1::(Eq a) => [a]->Bool
isPalindrome1 xs = foldl (\acc (a,b) -> if a == b then acc else False) True (zip xs (reverse xs))

isPalindrome2::(Eq a) => [a]->Bool
isPalindrome2 = (==) <*> reverse
module Problem17 where

split1::[a] -> Int -> ([a],[a])
split1 xs n = (take n xs,drop n xs)


split2::[a] -> Int -> ([a],[a])
split2 xs 0 = ([],xs)
split2 (x:xs) n = let (f,l) = split2 xs (n-1) in (x:f,l)

split3::[a] -> Int -> ([a],[a])
split3 xs 0 = ([],xs)
split3 (x:xs) n = (x:yz,l)
  where (yz,l) = split3 xs (n-1)
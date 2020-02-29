module Problem2 where

butLast1::[a] -> a
butLast1  = last . init

butLast2::[a] -> a
butLast2 [x,_] = x
butLast2 (_:xs) = butLast2 xs
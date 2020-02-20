module Problem22 where

range1::Int -> Int -> [Int]
range1 from to = [from..to]


range2::Int -> Int -> [Int]
range2 from to | from < to = [from] ++ range2 (from+1) to
               | otherwise = [to]


range3::Int -> Int -> [Int]
range3 from to = [x | x <- [from..to]]


safeRange::Int -> Int -> Maybe[Int]
safeRange from to | from < 0 || to < 0 || from > to = Nothing
                  | otherwise = Just [from..to]

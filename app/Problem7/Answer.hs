module Problem7 where

data NestedList a = Elem a | List [NestedList a]

flatten1::NestedList a -> [a]
flatten1 (Elem x) = [x]
flatten1 (List(x:xs)) = flatten1 x ++ flatten1(List xs)
flatten1 (List[]) = []

import Prelude hiding (head, tail)

data Stack a = Nil | Cons a (Stack a) deriving (Show, Eq)

empty = Nil
isEmpty Nil = True
isEmpty _ = False
cons (x, xs) = Cons x xs
head (Cons x _) = x 
tail (Cons _ xs) = xs


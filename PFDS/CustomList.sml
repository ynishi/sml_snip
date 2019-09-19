structure CustomStack : STACK =
struct
  datatype 'a Stack = NIL | CONS of 'a * 'a Stack
  exception Empty

  val empty = NIL
  fun isEmpty NIL = true | isEmpty _ = false
  fun cons (x, s) = CONS (x, s)
  fun head NIL = raise Empty
    | head (CONS(x, s)) = x  
  fun tail NIL = raise Empty
    | tail (CONS(x, s)) = s
end

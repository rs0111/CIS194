data IntList = Empty
             | Cons Int IntList

intListProd :: IntList -> Int
intListProd Empty = 1
intListProd (Cons x l) = x * intListProd l

data Tree = Leaf Char
          | Node Tree Int Tree
          deriving Show

tree :: Tree 
tree = Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))

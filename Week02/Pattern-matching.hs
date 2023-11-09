baz :: Person -> String
baz p@(Person n _ _) = "The name field of (" ++ show p ++ ") is " ++ n

checkFav :: Person -> String
checkFav (Person n _ SealingWax) = n ++ ", you're my kind of person!"
checkFav (Person n _ _) = n ++ ", your favorite thing is lame."

data Person = Person String Int Thing
    deriving Show

data Thing = Shoe
           | Ship
           | SealingWax
           | Cabbage
           | King
           deriving Show

brent :: Person
brent = Person "brent" 31 SealingWax

stan :: Person
stan = Person "stan" 94 Cabbage

data Thing = Shoe
           | Ship
           | SealingWax
           | Cabbage
           | King
           deriving Show

data FailableDouble = Failure
                    | OK Double
                    deriving Show

ex01 = Failure
ex02 = OK 3.4

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK d) = d

data Person = Person String Int Thing
    deriving Show

brent :: Person
brent = Person "Brent" 31 SealingWax

stan :: Person
stan = Person "stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ a _) = a

{- Case expressions -}

ex03 = case "Hello" of
         []      -> 3
         ('H':s) -> length s
         _       -> 7


failureToZero' :: FailableDouble -> Double 
failureToZero' x = case x of
                     Failure -> 0
                     OK d    -> d

data FailableDouble = Failure
                   | OK Double
                   deriving Show

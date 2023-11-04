intListLength :: [Integer] -> Integer
intListLength [] = 0
intListLength (x:xs) = 1 + intListLength xs

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (x:y:zs) 
  | intListLength (x:y:zs) `mod` 2 == 0 = 2*x : y : doubleEveryOther zs
  | intListLength (x:y:zs) `mod` 2 == 1 = x : 2*y : doubleEveryOther zs

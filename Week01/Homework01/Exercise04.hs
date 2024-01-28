import Distribution.Simple.Bench (bench)

{- Exercise 4 -}

-- We need the function that indicates whether an Integer could be
-- a valid credit card number.

intListLength :: [Integer] -> Integer
intListLength [] = 0
intListLength (x : xs) = 1 + intListLength xs

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (x : y : zs)
  | intListLength (x : y : zs) `mod` 2 == 0 = 2 * x : y : doubleEveryOther zs
  | intListLength (x : y : zs) `mod` 2 == 1 = x : 2 * y : doubleEveryOther zs

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x : xs) = sumList (toDigits x) + sumDigits xs

sumList :: [Integer] -> Integer
sumList [] = 0
sumList (x : xs) = x + sumList (xs)

rev :: [Integer] -> [Integer]
rev [] = []
rev (x : xs) = rev xs ++ [x]

toDigits :: Integer -> [Integer]
toDigits n = rev (toDigitsRev n)

toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n <= 0 = []
  | otherwise = n `mod` 10 : toDigitsRev (n `div` 10)

validate :: Integer -> Bool
validate n
  | sumDigits (doubleEveryOther (toDigits n)) `mod` 10 == 0 = True
  | otherwise = False

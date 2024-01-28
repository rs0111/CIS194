{- Exercise 3 -}

-- We need to calculate the sum of all digits.

-- Example: sumDigits [16, 7, 12, 5] == 1 + 6 + 7 + 1 + 2 + 5 = 22

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x : xs) = sumList (toDigits x) + sumDigits xs

-- sum of elements in list
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

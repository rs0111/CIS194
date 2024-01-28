{- Exercise 1 -}

-- We need to first find the digits of a number.

-- Example: toDigits 1234 == [1, 2, 3, 4]
-- Example: toDigitsRev 1234 == [4, 3, 2, 1]
-- Example: toDigits 0 == []
-- Example: toDigits (-17) == []

rev :: [Integer] -> [Integer]
rev [] = []
rev (x : xs) = rev xs ++ [x]

toDigits :: Integer -> [Integer]
toDigits n = rev (toDigitsRev n)

toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n <= 0 = []
  | otherwise = n `mod` 10 : toDigitsRev (n `div` 10)

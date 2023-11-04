rev :: [Integer] -> [Integer]
rev [] = []
rev (x:xs) = rev xs ++ [x]

toDigits :: Integer -> [Integer]
toDigits n = rev (toDigitsRev n)

toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n <= 0 = []
  | otherwise = n `mod` 10 : toDigitsRev (n `div` 10)

-- The tower of Hanoi with four pegs
type Peg = String
type Move = (Peg, Peg)
hanoiWithFour :: Integer -> Peg -> Peg -> Peg -> Peg -> [Move]
hanoiWithFour n a b c d
  | n <= 0 = []
  | n == 1 = [(a, b)]
  | otherwise = hanoiWithFour (n-2) a c b d ++ [(a, d)] ++ [(a, b)] ++ [(d, b)] ++ hanoiWithFour (n-2) c b a d

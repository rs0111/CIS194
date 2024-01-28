{- Exercise 6 -}

-- The tower of Hanoi with four pegs

-- The goal is still to move a stack of discs from the first peg to
-- the last peg, without ever placing a larger disc on top of a smaller
-- one, but now there are two extra pegs that can be used as “temporary” storage instead of only one.

type Peg = String

type Move = (Peg, Peg)

-- from `a` to `b`
-- `c`, and `d` are temporary storage
hanoiWithFour :: Integer -> Peg -> Peg -> Peg -> Peg -> Integer -> [Move]
hanoiWithFour n a b c d k
  | n <= 0 = []
  | n == 1 = [(a, b)]
  | n == 2 = [(a, c), (a, b), (c, b)]
  | otherwise = hanoiWithFour (n - k) a c b d k ++ (hanoi k a b d) ++ hanoiWithFour (n - k) c b a d k

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi n a b c
  | n <= 0 = []
  | n == 1 = [(a, b)]
  | otherwise = hanoi (n - 1) a c b ++ [(a, b)] ++ hanoi (n - 1) c b a

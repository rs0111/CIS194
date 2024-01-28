{- Exercise 6 -}

-- The tower of Hanoi with four pegs

-- The goal is still to move a stack of discs from the first peg to
-- the last peg, without ever placing a larger disc on top of a smaller
-- one, but now there are two extra pegs that can be used as “temporary” storage instead of only one.

type Peg = String

type Move = (Peg, Peg)

-- from `a` to `b`
-- `c`, and `d` are temporary storage

hanoiWithFour :: Integer -> Peg -> Peg -> Peg -> Peg -> [Move]
hanoiWithFour n a b c d
  | n <= 0 = []
  | n == 1 = [(a, b)]
  | otherwise = hanoiWithFour (n - 2) a c b d ++ [(a, d), (a, b), (d, b)] ++ hanoiWithFour (n - 2) c b a d

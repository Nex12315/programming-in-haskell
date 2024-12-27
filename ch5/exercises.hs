-- Exercise 1
ex1 x = sum [x ^ 2 | x <= [1 .. 100]]

-- Exercise 2
grid m n = [(x, y) | x <- [0 .. m], y <- [0 .. n]]

-- Exercise 3
square n = [(x, y) | (x, y) <- grid n n, x /= y]

-- Exercise 4
replicate' n e = [e | _ <- [1 .. n]]

-- Exercise 5
pyths n =
  [ (x, y, z)
    | x <- [1 .. n],
      y <- [1 .. n],
      z <- [1 .. n],
      x ^ 2 + y ^ 2 == z ^ 2
  ]

-- Exercise 6
factors n = [x | x <- [1 .. n], n `mod` x == 0]

perfects n = [p | p <- [1 .. n], sum (init (factors p)) == p]

-- Exercise 7
ex7 = concat [[(x, y) | y <- [3, 4]] | x <- [1, 2]]

-- Exercise 8
positions x xs = [i | (x', i) <- zip xs [0 ..], x == x']

find k t = [v | (k', v) <- t, k == k']

positions' x xs = find x (zip xs [0 ..])

-- Exercise 9
chisqr os es = sum [(o - e) ^ 2 / e | (o, e) <- zip os es]

scalarproduct xs ys = sum [x * y | (x, y) <- zip xs ys]

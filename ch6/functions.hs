fac 0 = 1
fac n | n > 0 = n * fac (n - 1)

insert x [] = [x]
insert x (y : ys)
  | x <= y = x : y : ys
  | otherwise = y : insert x ys

isort [] = []
isort (x : xs) = insert x (isort xs)

-- drop 0 [] = []
-- drop 0 xs = xs
-- drop n [] = []
-- drop n (x : xs) = drop (n - 1) xs

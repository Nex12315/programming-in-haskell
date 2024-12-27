sumdown :: Int -> Int
sumdown 0 = 0
sumdown n | n > 0 = n + sumdown (n - 1)

-- (*) :: Int -> Int -> Int
-- m * 0 = 0
-- m * n = m + (m * (n - 1))

-- (^) :: Int -> Int -> Int
-- m ^ 0 = 1
-- m ^ n = m * (m ^ (n - 1))

euclid :: Int -> Int -> Int
euclid 1 _ = 1
euclid _ 1 = 1
euclid a b
  | a == b = a
  | a > b = euclid (a - b) b
  | a < b = euclid (b - a) a

-- int euclid(int a, int b) {
--   int temp;
--   while (b != a) {
--     temp = b;
--     b = a % b;
--     a = temp;
--   }
--   return a;
-- }

-- int euclid(int a, int b) {
--   if (b == 0) {
--     return a;
--   } else {
--     return euclid(b, a % b);
--   }
-- }

-- and :: [Bool] -> Bool
-- and [] = True
-- and (x : xs) = x && (and xs)

-- concat :: [[a]] -> [a]
-- concat [] = []
-- concat [x] = x
-- concat (x : xs) = x ++ concat xs

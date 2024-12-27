-- halve [1,2,3,4,5,6]
-- ([1,2,3],[4,5,6])
halve xs = (take half xs, drop half xs)
  where
    half = length xs `div` 2

third_1 xs = head (tail (tail xs))

third_2 xs = xs !! 2

third_3 (_ : _ : x : _) = x

safetail_1 xs = if null xs then [] else tail xs

safetail_2 xs
  | null xs = []
  | otherwise = tail xs

safetail_3 [] = []
safetail_3 (_ : xs) = xs

conjuction_1 a b =
  if a == True
    then
      if b == True
        then True
        else False
    else False

conjuction_2 a b =
  if a == True
    then b
    else False

mult = \x -> (\y -> (\z -> x * y * z))

luhnDouble x =
  if doubled > 9
    then doubled - 9
    else doubled
  where
    doubled = x * 2

luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0

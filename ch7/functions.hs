fibonacci :: Int -> Integer
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main :: IO ()
main = do
  print $ fibonacci 10
  print $ fibonacci 20

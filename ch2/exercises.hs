n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]

-- last [1,2,3,4,5] = 5
last_ ns = head (reverse ns)

-- init [1,2,3,4,5] = [1,2,3,4]
init_1 ns = reverse (drop 1 (reverse ns))

init_2 ns = take (length ns - 1) ns

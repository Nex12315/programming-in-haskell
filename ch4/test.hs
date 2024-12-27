test ('a' : _) = True
test _ = False

add1 x y = x + y

add2 = \x -> (\y -> x + y)

const_ x = \_ -> x

const2 x _ = x

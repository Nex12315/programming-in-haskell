bools = [True, False]

nums = [[1, 2, 3]]

add a b c = a + b + c

copy a = (a, a)

apply f x = f x

second xs = head (tail xs)

swap (x, y) = (y, x)

double x = x * 2

pair x y = (x, y)

palindrome xs = reverse xs == xs

twice f x = f (f x)

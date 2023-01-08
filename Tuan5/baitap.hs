-- Create a higher-order function that takes 3 parameters: A function and the two parameters that that function takes, and
-- flips the order of the parameters.
-- For example this: `(/) 6 2` returns `3`. But this: `flip' (/) 6 2` returns `0.3333333333`

flip' :: (a -> a -> b) -> a -> a -> b
flip' f x y = f y x

main = do
    print(flip' (/) 6 2)

-- Create the `uncurry'` function that converts a curried function to a function on pairs. So this: `(+) 1 2` that returns `3` can be written as
-- `uncurry' (+) (1,2)` (with the two different arguments inside a pair).

uncurry' :: (a -> a -> a) -> (a,a) -> a
uncurry' f (x,y) = f x y

main = do
    print(uncurry' (+) (1,2))

-- Create the `curry'` function that converts an uncurried function to a curried function. So this: `fst (1,2)` that returns `1` can be written as
-- `curry' fst 1 2` (with the tuple converted into two different arguments).

curry' :: ((a,a) -> a) -> a -> a -> a
curry' f x y = f (x,y)

main = do
    print(curry' fst 2 1)
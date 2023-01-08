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

-- Use higher-order functions, partial application, and point-free style to create a function that checks if a word has an uppercase letter.
-- Start with using just higher-order functions and build from there.

checkUppercaseFirstCharacter :: String -> Bool
checkUppercaseFirstCharacter myString = any (\x -> elem x ['A' .. 'Z']) myString

main = do
    print(checkUppercaseFirstCharacter "Hello")

-- Create the `count` function that takes a team ("Red", "Blue", or "Green") and returns the amount of votes the team has inside `votes`.

votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]

count :: String -> Int
count color = length $ filter (== color) votes

main = do
    print(count "Blue")

-- Create a one-line function that filters `cars` by brand and then checks if there are any left.

cars :: [(String,Int)]
cars = [("Toyota",0), ("Nissan",3), ("Ford",1)]

checkCar :: String -> Bool
checkCar label = any (\(x, y) -> x == label && y > 0) cars

main = do
    print(checkCar "Toyota")
-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

myFunction1 :: [([Int], [Int])] -> Int
myFunction1 [(_,[_,x]), (_,_)] = x

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

myFunction2_1 :: [Int] -> [Int]
myFunction2_1 [] = []
myFunction2_1 [a] = [a]
myFunction2_1 (a:b:rest) = [a, b]

myFunction2_2 :: [Int] -> [Int]
myFunction2_2 mylist = case mylist of
    [] -> []
    [a] -> [a]
    (a:b:rest) -> [a, b]

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together

myFunction3 :: (Integer, Integer, Integer) -> Integer
myFunction3 (a, b, c) = a + b + c

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

myFunction4 :: [Int] -> Bool
myFunction4 [] = True
myFunction4 otherwise = False


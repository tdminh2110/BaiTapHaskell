-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

myFunction1 :: [([Int], [Int])] -> Int
myFunction1 [(_,[_,x]), (_,_)] = x


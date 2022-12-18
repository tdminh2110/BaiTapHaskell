-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Double -> Double -> Double -> Double
f1 x y z = x ** (y/z)

f2 :: Float -> Float -> Float -> Float
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]

f4 :: [Double] -> [Double] -> [Double] -> Bool
f4 x y z = x == (y ++ z)

-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?

We should define type signatures of functions in order to predefine data types for input parameters and a  return value of functions. This helps the programmer to use the correct data type of the variable while coding and helps function users to push the input parameter values and get the output value correctly.

-- Question 3
-- Why should you define type signatures for variables? How can they help you?

We should define type signatures for variables in order to specify the data type for variables. This helps the programmer to use the correct data type for the purpose of the problem.


-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.

We can convert Int to Float using the function fromIntegral.

For example: 

num = 99999 :: Int
new_num = fromIntegral num :: Float

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?

Yes, we can define in Haskel list of lists.

For example: list = [[3, 9], [7, 2], [8, 1]]

list !! 0 !! 1 accesses the number 9
list !! 1 !! 0 accesses the number 7
list !! 2 !! 1 accesses the number 1
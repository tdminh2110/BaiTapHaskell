-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

checkConsumptionElectricalDevice :: Int -> Int -> Int -> String
checkConsumptionElectricalDevice consumption hoursOfDaily maximumMonthlyConsumption =
   if maximumMonthlyConsumption < consumption * hoursOfDaily * 30
      then "The monthly consumption of an electrical device is bigger than the maximum allowed."
      else 
         if maximumMonthlyConsumption == consumption * hoursOfDaily * 30
            then "The monthly consumption of an electrical device is equal to the maximum allowed."
            else "The monthly consumption of an electrical device is smaller than the maximum allowed."

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.
-- In the previous function, return the excess/savings of consumption as part of the message.


-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

splitExpression :: Double -> Double -> Double -> Double -> Double
splitExpression a b c d =
   let   
      exp1 a = a * a
      exp2 a b = sqrt (a * b)
      exp3 = c - d
   in  
      exp1 a + exp2 a b + exp3 

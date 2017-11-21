
-- Uses pattern matching to extract from tuples

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

fourth :: (a, b, c, d) -> d
fourth (_, _, _, d) = d

-- Now with lists

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y 

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- recurisive function

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- all@ captures the entire string / param

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of all is: " ++ all ++ " is " ++ [x]  

-- bmi is a function that takes two paramters (where block)
-- later on, xs is bound 

calcBmis :: (RealFloat a) => [(a, a)] => [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

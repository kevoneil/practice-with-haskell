maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum' xs

myMaximum :: (Ord a) => [a] -> a
myMaximum [] = error "Can't send in an empty list!"
myMaximum [x] = x
myMaximum (x:xs) = max x (myMaximum xs)

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x:replicate' (n-1) x
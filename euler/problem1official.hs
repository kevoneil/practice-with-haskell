-- https://wiki.haskell.org/Euler_problems/1_to_10

import Data.List (union)
problem_1' = sum (union [3,6..999] [5,10..999])
 
problem_1  = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

-- or ...

problem_1 = sumStep 3 999 + sumStep 5 999 - sumStep 15 999
where
  sumStep s n = s * sumOnetoN (n `div` s)
  sumOnetoN n = n * (n+1) `div` 2

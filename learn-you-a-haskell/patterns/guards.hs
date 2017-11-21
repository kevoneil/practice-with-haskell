
-- Guards: like if/else but works great with patterns!

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell width height
  | bmi <= 18.5 = "You're underweight, you emo you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where bmi = width / height ^ 2

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b      =  a
  | otherwise  =  b

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b
  | a > b     = GT
  | a == b    = EQ
  | otherwise = LT

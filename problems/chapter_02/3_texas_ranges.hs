-- define a list of all the letters of
-- the english alphabet (both lowercase and uppercase)

lc = ['a'..'z']
uc = ['A'..'Z']

-- define a list of all the numbers that are
-- a multiple of both three and five
--   (There are a lot of them!)

fb = [x |x <- [1..200], x `mod` 3 == 0, x `mod` 5 == 0]

-- define a list that consists of a pattern of
-- 20 ones followed by 15 zeros, repeating
--   (you can do it in 40 characters!)

onesAndZeros = cycle (replicate 20 1 ++ replicate 15 0)


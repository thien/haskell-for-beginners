-- Define the following funtions using lambda
-- notation.

timesTwo :: Num a => a -> a
timesTwo = \x -> x*2

triangleArea :: Fractional a => a -> a -> a
triangleArea = \x -> \y -> x*y/2

jamesBondIntroduction :: String -> String -> String
jamesBondIntroduction = \x -> \y -> y ++ ", " ++ x ++ " " ++ y

rectangularVolume :: Num a => a -> a -> a -> a
rectangularVolume = \x -> \y -> \z -> x*y*z

-- Use lambdas to perform the following maps and filters

-- Compute the areas of these rectangles: [(1,2),(3,4),(5,6)]
rectAreas = map (\(l,w) -> l*w) [(1,2),(3,4),(5,6)]

-- Pick out all the vowels from "Bond, James Bond"

vowelmonster = filter (\x -> x `elem` "aeiouAEIOU") (jamesBondIntroduction "James" "Bond")

-- Write a function to pick out all the numbers in a list greater
-- than a given number

listoNuma x y = filter (\u -> u > y) x
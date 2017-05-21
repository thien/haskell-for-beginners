-- Guess the types of the following definitions.
-- Check your guesses in GHCI as you go.

a = 'a'
-- Char
b = False
-- Bool
c = 100
-- Int
d = 10.5
-- Double
e = (100, "Pants")
-- (Int,[Char])
f = ()
-- ()
g = [ x*x | x <- [1..10] ]
-- [Int]
h x = "Hello " ++ x
-- [Char]
i x y = x ++ y ++ " Goodbye"
-- [Char] -> [Char] -> [Char]
j x y = x:y ++ " Goodbye"
-- a -> [a] -> [a]

-- Add type signatures to the following function
-- definitions. If you can load the file into GHCI
-- without an error, then you have a valid signature!

add1 :: Int -> Int
add1 x = x + 1

hasThree :: [Int] -> Bool
hasThree ns = 3 `elem` ns

hasFoo :: [[Char]] -> Bool
hasFoo words = "foo" `elem` words

interject :: [Char] -> [Char] -> [Char]
interject before after = before ++ " - HEY! - " ++ after

isTwice :: Int -> Int -> Bool
isTwice x y = x == y * 2

numberThem :: [Char] -> [(Int, Char)]
numberThem word = zip [1..] (word ++ " more")

-- Write functions for the following type signatures.
-- Try to guess what the function should do based
-- on the name and type signature.

area :: Double -> Double -> Double
area a b = a*b

doubleThem :: [Int] -> [Int]
doubleThem k = map (\x -> x*2) k

numberOfMs :: String -> Int
numberOfMs k = foldl (\count char -> if char == 'm' then (count +1) else count) 0 k

-- Write type signatures *and* definitions for the following
-- functions. Guess what they should do based on the name and parameters.
-- In some cases, more than one definition or signature might be acceptable.

removeVowels :: [Char] -> [Char]
removeVowels string = [x | x <- string, not(x `elem` "aeiouAEIOU")]

hypotenuse :: Double -> Double -> Double
hypotenuse a b = sqrt((a * a) + (b* b)) -- hint: use sqrt

makeRects :: [Int] -> [Int] -> [(Int, Int)]
makeRects lengths widths = [(a,b) | a <- lengths, b <- widths]


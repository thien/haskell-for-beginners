-- Add type signatures to the following functions.
-- More than one signature will work. You should
-- find the most general one (i.e. the one that uses
-- the most type variables).

doNothing :: a -> a
doNothing x = x

takeSome :: [a] -> [a]
takeSome xs = take 10 (drop 3 xs)

crossProduct :: [a] -> [a] -> [(a,a)]
crossProduct xs ys = [ (x,y) | x <- xs, y <- ys ]

obscure :: [a] -> [Char]
obscure xs = [ '*' | _ <- xs ]

aOrB :: Bool -> a -> a -> a
aOrB condition a b = if condition then a else b

-- Write defintions for the following functions based
-- on their type signatures and names.

replaceSnd :: (a,b) -> c -> (a,c)
replaceSnd a c = (fst a, c)

join :: ([a],[a]) -> [a]
join k = fst k ++ snd k

splitOne :: [a] -> (a,[a]) -- may fail on empty lists
splitOne li = (head li, tail li)

-- Write type signatures and definitions for the following
-- functions based on their names and parameters.

flipPair :: (a,b) -> (b,a)
flipPair tuple = (snd tuple, fst tuple)


safeHead valueIfEmpty xs = undefined

-- NOTE: there is a standard unzip function that does this. Try to do
-- it yourself without looking.
-- unzipPairs :: [(a,a)] -> ([a],[a])
unzipPairs listOfPairs = [(a,b) | a <- fst listOfPairs, b <- snd listOfPairs]


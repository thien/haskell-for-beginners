import Control.Applicative
import Data.Char

-- Define getIntLine as in the previous
-- problems, but use Applicative functions
-- instead of fmap (no cheating and using
-- <$> either!)
--
getIntLine :: IO Int
getIntLine = pure read <*> getLine


-- Define addition for Applicatives using
-- the 'Applicative style'. Exercise your
-- definition with different Applicatives
-- in GHCI to see how it behaves. Try Maybe, lists,
-- IO, and functions.
--
aPlus :: (Num a, Applicative f) => f a -> f a -> f a
aPlus x y = (+) <$> x <*> y

-- Use lists an Applicatives to calculate the chances
-- of rolling 15 or better on a roll of 1d6 + 1d10 + 1d4.
--
p = num15OrOver / numPossibilities
  where allPossibilities = [1..6] `aPlus` [1..10] `aPlus` [1..4]
        _15OrOver = filter (>=15) allPossibilities
        num15OrOver = fromIntegral (length _15OrOver)
        numPossibilities = fromIntegral (length allPossibilities)

-- Reimplement the encrypt and decrypt functions from
-- Chapter 7, problem set 2 using ZipLists as Applicatives.
--
encrypt :: String -> String -> String
encrypt pad plainText = getZipList $ padOne <$>
                        ZipList (cycle pad) <*>
                        ZipList plainText
  where padOne p c = chr (ord c + digitToInt p)

decrypt :: String -> String -> String
decrypt pad plainText = getZipList $ padOne <$>
                        ZipList (cycle pad) <*>
                        ZipList plainText
  where padOne p c = chr (ord c - digitToInt p)

cipherText = "Xiss-us-pr\128tr\128-\131i\129v-fi}Zv\DELt\128/"
key = "c0ded"


-- Pick an Applicative and demonstrate that all the Applicative laws
-- are satisfied for it.
--
fmapProof = (pure (+1) <*> [3,4]) == fmap (+1) [3,4]
idProof = (pure id <*> [3,4]) == [3,4]
compositionProof = (pure (.) <*> [(+1),(+2)] <*> [(*2),(*3)] <*> [4,5]) ==
                   ([(+1),(+2)] <*> ([(*2),(*3)] <*> [4,5]))
purityProof = (pure (+1) <*> pure 3) == (pure (3 + 1) :: [Int])
dollarProof = ([(+1),(+3)] <*> pure 3) == (pure ($3) <*> [(+1),(+3)])


-- Redefine addition on Applicatives using lifting
--
aPlus' :: (Num a, Applicative f) => f a -> f a -> f a
aPlus' = liftA2 (+)


-- Define a function to find the sum of a list
-- of Ints that are wrapped in an Applicative.
-- Try it out on some Applicatives in GHCI.
--
sumA :: Applicative f => [f Int] -> f Int
sumA = foldl aPlus' (pure 0)


-- Define a left folding function for Applicatives
-- that accepts an unlifted folding function and
-- initial value, but operates on a list of Applicatives
--
foldlA :: Applicative f => (a -> b -> a) -> a -> [f b] -> f a
foldlA f = foldl (liftA2 f) . pure

-- Redefine sum for Applicatives using your new fold
-- function for Applicatives.
--
sumA' :: Applicative f => [f Int] -> f Int
sumA' = foldlA (+) 0


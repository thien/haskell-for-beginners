import Control.Monad.Instances
import Data.List

-- Use functions as a Monad to calculate
-- the average of a list without naming the
-- list parameter
--
average :: Fractional n => [n] -> n
average = do
  total <- sum
  count <- length
  return (total / fromIntegral count)


-- Similarly define the median of a list
--
median :: Ord a => [a] -> a
median = do
  count <- length
  ordered <- sort
  return $ ordered !! (count `div` 2)


-- Define a function to take n elements
-- from a list Ints, where n is the first
-- element if the list. Ignore the first
-- element when taking n. Of course, use
-- functions as a Monad.
--
neck :: [Int] -> [Int]
neck = do
  count <- head
  take count . drop 1


-- Define a fullName function for Person,
-- exploiting functions as a Monad.
--
data Person = Person { firstName :: String,
                       lastName :: String }

bobJones = Person "Bob" "Jones"

fullName :: Person -> String
fullName = do
  first <- firstName
  last <- lastName
  return $ first ++ " " ++ last



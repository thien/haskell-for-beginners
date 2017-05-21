-- build a list of all the positive integers less than 100
-- that are multiples of 3 *or* 5

someList = [x | x <- [1..100], (x `mod` 3 == 0) || (x `mod` 5 == 0)]

-- write a function that takes two lists returns a new list
-- by removing the contents of the second list from the first

filterOut wheat chaff = [ w | w <- wheat, not (w `elem` chaff) ]

-- write a function that accepts two lists of numbers and
-- returns a list of each number in the first list repeating as much
-- as specified by each number of the second list
-- Example: for the lists [3,8,1] and [0,2,3] the function should
-- return the following lists:
--      [], [3,3], [3,3,3]
--      [], [8,8], [8,8,8]
--      [], [1,1], [1,1,1]
--
-- To avoid someone accidentally creating a GIGANTIC list, the function
-- should ignore any lists longer than 20 elements
--

magica list count =  [ replicate c k | k <- list, c <- count, c <= 20]


-- write a function that censors every string in a list by replacing
-- the vowels in them with *
--
-- For good measure, it should remove the string "dingleberry" from
-- the list, if it appears
--

vowels = ['a','e','i','o','u']
censor x = [y | y <- x, not(y `elem` vowels)]
-- write a function that takes a list of lengths
-- as numbers returns a list of all rectangles
-- that can be constructed from sides of those lengths
--
--   You can represent a rectangle by the pair of its dimensions
--

-- a list would be represented as [1,2,3,4,5,6,7,8,9]
-- you'd want it to be represented as 

rectangles sides = [ (l, w) | l <- sides, w <- sides ]

-- write a function that takes a list of rectangles
-- and computes the area of each one
--

daArea rect = [fst r * snd r | r <- rect ]

-- Use your two functions above to write a function
-- that takes a list of lengths and returns all
-- the possible rectangles paired with their areas
--

fatty li = daArea (rectangles li)

-- Find all the rectangles with integers dimensions
-- up to 10 whose perimeter is equal to their area.
-- Do not include any rectangles that are equivalent
-- to one another ((2,10) and (10,2) are the
-- same rectangle).
--
--   (It may be more convenient to *not* use your
--    functions from above)
--

bigmanTings = [ u | u <- [(l,w) | l <- [1..10], w <- [1..10], l*w == l+w]]



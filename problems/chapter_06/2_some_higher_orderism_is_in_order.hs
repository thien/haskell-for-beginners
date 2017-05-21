-- For all the functions you define in these problems,
-- write the type signature before you start writing
-- the definition.

-- Define a function that applies another function
-- to each element of a pair.

fifty :: (t -> t1) -> t -> t1
fifty f x = f x

-- Use your function above to write a function
-- that scales (multiplies) a pair by a given
-- factor.

scale :: Double -> Double -> Double
scale x y = fifty (*) x y

-- Define a function that applies a function to
-- each element of a list.

madTing :: (k -> t) -> [k] -> [t]
madTing _ [] = []
madTing f (x:xs) = f x:madTing f xs

-- Use your functions above to define a function that
-- scales every pair in a list of pairs by ten.

scaley [] = []
scaley (x:xs) = madTing (sqrt) (x:xs)

-- Define a function that accepts a function and an
-- initial value. It should return the list of values
-- produced by repeatedly applying the function to its
-- own return value.


-- Use your functions above to define a function that
-- takes a pair and returns a list of all (infinitely many)
-- pairs by scaling that pair by powers of ten.



-- Use map and filter to construct expressions
-- for the following calculations.

-- Double all the numbers from 1 to 10

doub = map (*2) [1..10]

-- Compute the first 20 perfect cubes.

cubes = map (^^3) [1..20]

-- Greet [Bob, Alice, and Eve] by adding "Hello, " in front each name.

greetings = map ("hello, " ++) ["Bob", "Alice", "Eve"]

-- Find all the odd numbers in [2,13,7,14,4,15,6,8,9,11]

odds = filter (\x -> x `mod` 2 /= 0) [2,13,7,14,4,15,6,8,9,11]

-- Find all the even perfect cubes greater than 30 up to 1000

epc = filter (\x -> x > 30 && x < 1000) (map (^^3) [1..1000])

-- Create a list of all the positive even numbers (using filter)

efilter = filter (\x -> x `mod` 2 == 0) [1..]

-- Create a list of all the positive even numbers (using map)

emap = map (*2) [1..]

-- Find all the perfect squares less than 10,000

psq = map (^^2) [1..10000] 

-- Find all the proper divisors of 8128. These are the positive
-- integers that divide it evenly and are less than it.

p8128 = filter (\x -> (8128 `rem` x) == 0) [1..8128]


















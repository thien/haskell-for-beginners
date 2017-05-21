-- Write a function that implements Fizz Buzz
-- (http://en.wikipedia.org/wiki/Fizz_buzz)
-- up to the number 15 with simple pattern matching.
-- After 15, give up and lose the game.
fizzBuzzLose :: Integer -> String
fizzBuzzLose 15 = "You lose"
fizzBuzzLose x
        | (x `mod` 5 == 0) &&  (x `mod` 3 == 0) = "fizz buzz!"
        | (x `mod` 5 == 0) = "buzz"
        | (x `mod` 3 == 0) = "fizz"

-- Write two functions to calculate the 2 and 3 dimensional
-- dot product using tuples and pattern matching:
--   http://en.wikipedia.org/wiki/Dot_product#Algebraic_definition

-- leDot a b | length a == 2 = [c | c <- ]

-- Write a function to flip the components of all the pairs in
-- a list.
flipAll :: [(a,b)] -> [(b,a)]
flipAll = undefined

-- Write a function that moves the first element of a list to the end.

kill (x:xs) = xs ++ [x]

-- Write your own implementation of reverse to reverse a list
--   (your function will probably need to call itself)

rev [] = []
rev (x:xs) = rev xs ++ [x]

-- Write a function to tell if a list's length is > 4.
-- Use only pattern matching to get the answer.

longerThan4 [] = False
longerThan4 [_] = False
longerThan4 [_,_] = False
longerThan4 [_,_,_] = False
longerThan4 [_,_,_,_] = False
longerThan4 _ = True

-- Write a function that pairs up each member of a list with
-- the one after it. For the list [1,2,3] the function should
-- return the list [(1,2),(2,3)]. (@ can help you here)


conses :: [a] -> [(a,a)]
conses [] = []
conses all@(_:rest) = zip all rest
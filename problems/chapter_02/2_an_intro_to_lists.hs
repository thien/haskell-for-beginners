-- Construct the word Gazump as a string in 4 different
-- ways and prove they are equal

word1 = "Gazump"
word2 = "Gaz"++"ump"
word3 = "Gaz"++"ump"
word4 = "G"++"a"++"z"++"ump"

checkGazump = (word1 == word2) && (word3 == word4)

-- Write a function that totals top 3 numbers in a
-- list (assuming the list is sorted with highest first)

calc1 [_] 1 c = c
calc1 [] 1 c = c
calc1 (x:xs) k c = calc1 xs (k-1) (c+x)
top3nums (x:xs) = calc1 (x:xs) 4 0

-- Write a function to extract a portion of a string
-- based on position and length

extracto k p = k !! p

-- Write a function to tell if a list's length is > 4
-- (it should return a boolean)

is4Plus x = if length x >= 4 then True else False

-- Write a function like the one above *without* referring
-- to the list's length

countoe [] k = if k == 4 then True else False
countoe [_] 4 = True
countoe (_:_) 4 = True 
countoe (x:xs) k = countoe xs (k+1)
is4Plus' x = countoe x 0

-- Write safe versions of tail and init that return
-- empty list if the list is empty

safeTail [] = []
safeTail (x:xs) = xs

safeInit [] = []
safeInit x = init x

-- Write safe versions of head and last that take a
-- default value to return if the list is empty

-- safeHead x :: Num t => [t] -> t
-- safeHead x = if not(null x) then 
--                 if length x == 1 then x !! 1
--                 else head x
--              else []


-- safeLast [] = []
-- safeLast [x] = x
-- safeLast (x:xs) = safeLast xs

-- write a function to tell if either the sum or product
-- of a list is in another list



-- write a function that reverses a section of a string
-- based on position and length. Use your substring function
-- from earlier to help.

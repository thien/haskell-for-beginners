-- Define a function to remove all the elements of
-- one list from another. Given the lists [1,2,3]
-- and [5,6,1,7,2,8] it should return [5,6,7,8]

naughties = [1,2,3]

kanye :: [Int] -> [Int]
kanye [] = []
kanye (x:xs) = if x `elem` naughties then kanye xs else [x] ++ kanye xs

-- Define a function to perform the union of two
-- lists. Any elements from the second list that
-- are already in the first should not be duplicated
-- Given the lists [1,2,3]
-- and [5,6,1,7,2,8,5] it should return [1,2,3,5,6,7,8]

diddy :: [Int] -> [Int] -> [Int]
diddy [] [] = []
diddy xs [] = xs
diddy [] ys = ys
diddy (x:xs) (y:ys)
    | x > y = [y] ++ diddy (x:xs) ys
    | x < y = [x] ++ diddy xs (y:ys)
    | otherwise = diddy xs ys

-- Define zip3', a function that takes three lists an
-- zips them into triples, stopping at the end of the
-- shortest list.

zip3' [] [] [] = []
zip3' xs [] [] = []
zip3' [] ys [] = []
zip3' [] [] xs = []
zip3' xs ys [] = []
zip3' xs [] ys = []
zip3' [] xs ys = []
zip3' (x:xs) (y:ys) (z:zs) = [(x,y,z)] ++ zip3' xs ys zs

-- Define a function to count the occurrences of
-- a given element in a list
--  (Hint: you may need a helper function to do the recursion)

counto :: Eq a => [a] -> a -> Int -> Int
counto [] _ k = k
counto (x:xs) c u = if c == x then counto xs c (u+1) else counto xs c u
occurrences :: Eq a => [a] -> a -> Int
occurrences x c = counto x c 0
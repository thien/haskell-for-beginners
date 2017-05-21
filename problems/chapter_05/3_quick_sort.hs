-- Implement a bubble sort:
--   http://en.wikipedia.org/wiki/Bubble_sort
--
-- HINT: try using two functions, inOrder and bubbleSort

inOrder :: (Ord a) => [a] -> Bool
inOrder [] = True
inOrder [x] = True
inOrder (x:y:xs) | x > y     = False 
                 | otherwise = inOrder (y:xs)

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort xs | inOrder xs == True = xs
bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort (x:y:xs)
    | y < x     = bubbleSort (y:bubbleSort(x:xs))
    | otherwise = bubbleSort (x:bubbleSort(y:xs))

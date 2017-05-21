-- Define a list of all Fibonacci numbers

fib :: Num a => [a]
fib = [fibb x | x <- [1..]]

fibb 1 = 1
fibb 2 = 1
fibb n = fibb (n-1) + fibb(n-2)

-- Implement a recursive function to find
-- the maximum element in a list of
-- pairs of elements.

maxPairElement :: Ord a => [(a,a)] -> a
maxPairElement [] = error "what do you think ur playin foo"
maxPairElement [(a,b)] = maximum (a,b)
maxPairElement (x:xs) 
		| k > maxTail   = k
		| otherwise 	= maxTail
		where (maxTail, k) = (maxPairElement xs,maximum (fst x, snd x))
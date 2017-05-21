-- Rewrite your implementation of reverse from earlier
-- using a case expression.


-- Write a function to greet people based on their names.
-- The function should:
--    * Give some response for all names.
--    * Have a special greating for Bob
--    * Insult anyone who's name starts with Q
--    * Tell anyone with a name shorter than
--      3 characters to get a real name
--
-- BONUS: This is more convenient if you use a guard
--        *inside* your case experesion.

greeting :: String -> String
greeting name 
        | name == "Bob"   = "fuck off bob"
        | (head name) == 'q' = "suk ur mum " ++ name
        | (length name) <= 3 = "get a real name"


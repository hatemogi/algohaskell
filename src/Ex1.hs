module Ex1 (uncons, wrap, unwrap, single, takeWhile')
where

-- Excercise 1.1
-- maximum :: Ord a => [a] -> Maybe a
-- take :: Num -> [a] -> [a]
-- takeWhile :: (a -> Bool) -> [a] -> [a]
-- inits ::
-- splitAt :: Num -> [a] -> ([a], [a])
-- null :: [a] -> Bool
-- elem :: a -> [a] -> Bool
-- zipWith :: [a] -> [b] -> [(a, b)]
-- minimum :: Ord a => [a] -> Maybe a
-- drop :: Num -> [a] -> [a]
-- dropWhile :: (a -> Bool) -> [a] -> [a]
-- tails
-- span
-- all :: (a -> Bool) -> [a] -> Bool
-- (!!) :: [a] -> Num -> a


-- Excercise 1.2
uncons :: [a] -> Maybe (a, [a])
uncons [] = Nothing
uncons (x:xs) = Just (x, xs)

-- Excercise 1.3
wrap :: a -> [a]
wrap a = [a]

unwrap :: [a] -> a
unwrap [a] = a
unwrap _ = undefined

single :: [a] -> Bool
single [a] = True
single _ = False

-- Excercise 1.4
reverse :: [a] -> [a]
reverse = foldl (flip (:)) []

-- Excersise 1.5
map :: (a -> b) -> [a] -> [b]
map f = foldr ((:) . f) []

filter :: (a -> Bool) -> [a] -> [a]
filter p = foldr cond [] where cond x xs = if p x then x:xs else xs

-- Excersise 1.6
-- foldr f e . filter p
-- (foldr (+) 0 . filter even) [1, 2, 3, 4]
-- foldr g e where g a b = if p a then f a b else b

-- Excercise 1.7
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' p =
    foldr f []
    where f x ys = if p x then x:ys else []


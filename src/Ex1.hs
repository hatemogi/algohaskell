module Ex1 (uncons, wrap, unwrap, single)
where

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


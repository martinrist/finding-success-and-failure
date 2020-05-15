module FindingSuccessAndFailure.Chapter1.Exercises where

-- Exercise 1

absValWithIf :: (Num a, Ord a) => a -> a
absValWithIf x = if x < 0 then negate x else x

absValWithCase :: (Num a, Ord a) => a -> a
absValWithCase x = case x < 0 of
    True  -> -x
    False -> x

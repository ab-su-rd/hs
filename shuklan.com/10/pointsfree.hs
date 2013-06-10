-- convert to pointsfree style
-- f x = 5 + 8/x

f = \x -> 5 + 8/x

f2 = (+) 5 . (/) 8

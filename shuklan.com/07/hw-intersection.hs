import Graphics.Gloss.Geometry.Line
import Graphics.Gloss.Data.Point

data Line = L Point Point

intersectLines (L a b) (L c d) = intersectLineLine a b c d


-- and this is why you shouldn't look at solution before you attempt :(

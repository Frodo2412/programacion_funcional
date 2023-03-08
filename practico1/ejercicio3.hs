{- Defina and y or usando expresiones condicionales. Haga lo mismo utilizando pattern matching. -}

andConditional :: Bool -> Bool -> Bool
andConditional x y = if x then y
                     else False

andPatternMatching :: Bool -> Bool -> Bool
andPatternMatching True True = True
andPatternMatching x y = False

orConditional :: Bool -> Bool -> Bool
orConditional x y = if x then True
                    else y

orPatternMatching :: Bool -> Bool -> Bool
orPatternMatching False False = False
orPatternMatching x y = True



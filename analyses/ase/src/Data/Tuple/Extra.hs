module Data.Tuple.Extra((<+>)) where    

-- | Left-associative binary operator for the (,) function
(<+>) :: a -> b -> (a, b) 
(<+>) = (,)
infixl 6 <+>

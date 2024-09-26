module Lattice.Tainted (Tainted(..), taintWith, ) where 

import Lattice.Class
import Domain.Core.TaintDomain.Class

data Tainted t a = Tainted a t
    deriving (Eq, Ord)

taintWith :: t -> a -> Tainted t a
taintWith = flip Tainted 

instance Functor (Tainted t) where
    fmap f (Tainted a t) = Tainted (f a) t
instance TaintDomain t => Applicative (Tainted t) where
    pure = taintWith mempty 
    (Tainted f t1) <*> (Tainted a t2) = Tainted (f a) (t1 <> t2)  
instance TaintDomain t => Monad (Tainted t) where
    return = pure
    (Tainted a t1) >>= f = let (Tainted b t2) = f a in Tainted b (t1 <> t2)

instance (Eq t, TaintDomain t, Show a) => Show (Tainted t a) where
    show (Tainted v t)
        | t == mempty = show v
        | otherwise = "\ESC[35m" ++ show v ++ "\ESC[0m"    

instance (BottomLattice a, BottomLattice t) => BottomLattice (Tainted t a) where
    bottom = Tainted bottom bottom
instance (Joinable a, Joinable t) => Joinable (Tainted t a) where
    join (Tainted a1 t1) (Tainted a2 t2) = Tainted (a1 `join` a2) (t1 `join` t2)
instance (PartialOrder a, PartialOrder t) => PartialOrder (Tainted t a) where
    leq (Tainted a1 t1) (Tainted a2 t2) = a1 `leq` a2 && t1 `leq` t2 
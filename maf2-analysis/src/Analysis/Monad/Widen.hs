-- | Utilities for widening parts of the monadic 
-- stack to specific parts of the state space.
{-# LANGUAGE FlexibleInstances, AllowAmbiguousTypes, ScopedTypeVariables #-}
module Analysis.Monad.Widen(AllMapM, AllMapT, PutAll(..), GetAll(..), WidenedT, State, joinWithAllTuple, runWidenedT) where

import Analysis.Monad.Map
import Analysis.Monad.Cache (CacheT, MonadCache)
import qualified Analysis.Monad.Cache as Cache
import Data.TypeLevel.HList
import Data.Kind
import Data.Map (Map)
import Data.Function ((&))
import Lattice.Class

-- | Generate constraints for storing each datatype in @h@ 
-- as a widened value indexed by @s@
type family AllMapM (s :: Type) (h :: [Type]) (m :: Type -> Type) :: Constraint where   
   AllMapM s '[] m = ()
   AllMapM s (t ': ts) m = (MapM s t m, AllMapM s ts m)

-- | Generate a stack of monad transformers for representing an instance of the @AllMapM@
type family AllMapT (s :: Type) (h :: [Type]) (m :: Type -> Type) :: Type -> Type where    
   AllMapT s '[] m = m
   AllMapT s (t ': ts) m = MapT s t (AllMapT s ts m)

-- | Put all elements of the given HList into a global MapT structure
class PutAll s l where    
   joinWithAll :: (Monad m, AllMapM s l m) => s -> HList l -> m ()
instance PutAll s '[] where   
   joinWithAll _ HNil = return ()
instance (Joinable t, PutAll s ts) => PutAll s (t ': ts) where  
   joinWithAll s (t :+: ts) = joinWith s t >> joinWithAll s ts
-- | Get all elements from the cache and put them in an HList
class GetAll s l where  
   getAll :: (Monad m, AllMapM s l m) => s -> m (Maybe (HList l))
instance GetAll s '[] where   
   getAll _ = return (Just HNil)
instance (GetAll s ts) => GetAll s (t ': ts) where   
   getAll s = do 
      t'  <- get @_ @t s 
      ts' <- getAll @_ @ts s
      return (liftA2 (:+:) t' ts')

-- | Same as @joinWithAll@ but works on left-nested tuples
joinWithAllTuple :: (UnnestPair p, PutAll s (Unnest p), AllMapM s (Unnest p) m, Monad m) => s -> p -> m ()
joinWithAllTuple s = joinWithAll s . unnest

type WidenedT s l m = AllMapT s l (CacheT m) 
type WidenedVal s l m a = Cache.Val (WidenedT s l m) a
type WidenedKey s l m a = Cache.Key (WidenedT s l m) a
type State s l = HList (FMap (Map s) l)

-- | Run a stack of @MapT@ transformers given the initial values for each 
-- widened element.
runWidenedT :: forall s l m a .
               (-- WidenedKey s l a ~ WidenedVal s l a,
                -- Ensure that @l@ represents the input of the monadic stack
                Unconses' (FMap (Map s) l) () ~ WidenedKey s l m (),
                -- Ensure that the resutling value represents the same as the HList
                Unnest (WidenedVal s l m a) ~ (a ': FMap (Map s) l), 
                -- Ensure that we can unnest it
                UnnestPair (WidenedVal s l m a),
                -- Ensure that we can uncons the hlist into a nested tuple
                Uncons (FMap (Map s) l) (),
                -- Ensure that the base monad is always equal to @m@, 
                -- this should be the case since all the monads are @MapT@ which 
                -- have as base the underlying monad, but Haskell cannot figure
                -- this one out since @AllMapT@ cannot be fully expanded at this point
                Cache.Base (WidenedT s l m) ~ m,
                -- Again, this constraint is trivial once @AllMapT@ is expanded but 
                -- cannot be derived at this point.
                MonadCache (AllMapT s l (CacheT m)),
                -- Other constraints
                Functor m)
            => State s l 
            -> WidenedT s l m a 
            -> m (a, State s l)
runWidenedT st m = Cache.run @(WidenedT s l m) @() @a (const m) (uncons (() :+: st))
                 & fmap (select . unnest)
            where select :: HList (a ': (FMap (Map s) l)) -> (a, HList (FMap (Map s) l))
                  select (a :+: st') = (a, st')

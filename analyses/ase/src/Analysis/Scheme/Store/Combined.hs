-- | A "combined" version of the Scheme store. This module is here so that 
-- the small-step state is not polluted with three different stores for 
-- storing regular values, pairs, stirng and vectors respectively.
{-# LANGUAGE FlexibleInstances, FlexibleContexts, GeneralizedNewtypeDeriving, DataKinds #-}
module Analysis.Scheme.Store.Combined where

import Analysis.Store
import Analysis.Monad.Stack
import Analysis.Monad.Store
import Domain
import Domain.Scheme
import Domain.Scheme.Store
import Lattice.ConstantPropagationLattice
import Lattice.Class
import qualified Lattice.Class as Lat
import Data.Maybe
import RIO

------------------------------------------------------------
-- Combined value definition
------------------------------------------------------------

-- | A value that combines Scheme's regular values (e.g., closures, numbers, ...) 
-- and heap allocated values. 
--
-- The heap allocated values are fixed to their most common instantiation 
-- in Scheme analyses in order to avoid issues with resolving their 
-- values when looking for instances in the store. 
--
data AllVal v = RVal v                            -- ^ regular values   
              | CVal (SimplePair v)               -- ^ heap allocated pairs (cons)
              | SVal (SchemeString (CP String) v) -- ^ heap allocated strings 
              | VVal (PIVector v v)               -- ^ heap allocated vectors
              deriving (Ord, Eq, Show)

-- | Checks whether the given @AllVal@ is a regular value, 
-- and if so, returns @Just@ of that value otherwise @Nothing@.
isRVal :: AllVal v -> Maybe v
isRVal (RVal v) = Just v 
isRVal _ = Nothing

-- | Checks whether the given @AllVal@ is a pair value, 
-- and if so, returns @Just@ of that value otherwise @Nothing@.
isCVal :: AllVal v -> Maybe (SimplePair v)
isCVal (CVal v) = Just v 
isCVal _ = Nothing

-- | Checks whether the given @AllVal@ is a string value, 
-- and if so, returns @Just@ of that value otherwise @Nothing@.
isSVal :: AllVal v -> Maybe (SchemeString (CP String) v)
isSVal (SVal v) = Just v 
isSVal _ = Nothing

-- | Checks whether the given @AllVal@ is a string value, 
-- and if so, returns @Just@ of that value otherwise @Nothing@.
isVVal :: AllVal v -> Maybe (PIVector v v)
isVVal (VVal v) = Just v 
isVVal _ = Nothing

instance Joinable v => Joinable (AllVal v) where
   -- Values in `AllVal` can never overlap so only compatible values 
   -- needt be joined together
   join (RVal a) (RVal b) = RVal $ Lat.join a b
   join (CVal a) (CVal b) = CVal $ Lat.join a b
   join (VVal a) (VVal b) = VVal $ Lat.join a b
   join (SVal a) (SVal b) = SVal $ Lat.join a b
   join _ _ = error "cannot join unrelated types"

------------------------------------------------------------
-- Value coercion
------------------------------------------------------------

-- | Coerces a value from @from@ to @to@.
class Coerce from to where
   coerce :: from -> to
-- | Trivial instance coercing @AllVal@ into a pair.
instance Coerce (AllVal v) (SimplePair v) where
   coerce = fromJust . isCVal
-- | Trivial instance coercing @(AllVal v)@ into a vector.
instance Coerce (AllVal v) (PIVector v v) where
   coerce = fromJust . isVVal
-- | Trivial instance coercing @(AllVal v)@ into a string.
instance Coerce (AllVal v) (SchemeString (CP String) v) where
   coerce = fromJust . isSVal
-- | Trivial instance coercing a pair into an @(AllVal v)@.
instance Coerce (SimplePair v) (AllVal v) where
   coerce = CVal
-- | Trivial instance coercing a vector into an @(AllVal v)@.
instance Coerce (PIVector v v) (AllVal v) where
   coerce = VVal
-- | Trivial instance coercing a string into an @(AllVal v)@.
instance Coerce (SchemeString (CP String) v) (AllVal v)  where
   coerce = SVal

------------------------------------------------------------
-- Combined store
------------------------------------------------------------

-- | Store that always uses a map for its backing storage
--type StoreT' adr v = StoreT (Map adr v) adr v
--
--type SepT m a = MonadStack '[
--                  MayEscapeT (Set DomainError),
--                  AllocT Exp Context Adr,
--                  CtxT Context,
--                  StoreT' (CoerceStore AllVal) Adr (PaiDom Val),
--                  StoreT' (CoerceStore AllVal) Adr (StrDom Val),
--                  StoreT' (CoerceStore AllVal) Adr (VecDom Val),
--                  NonDetT,
--                  CacheT
--               ] m a
--
--runInPrimMStack :: (Monad m, Ord a)
--                => Sto -- ^ the initial store 
--                -> Context -- ^ the current context
--                -> AdaptT m a -- ^ the monadic computation to run 
--                -> m (Set (a, Sto))
--runInPrimMStack initialSto context m = foldMap extract . Set.fromList <$>  run (const m) initialState
--                                                                         & runAlloc @Exp @Context @Adr (Adr . spanOf)
--      where extract (((v, paiSto), strSto), vecSto) =
--                          case v of
--                              Value v     -> Set.singleton (v, combine paiSto strSto vecSto)
--                              MayBoth v _ -> Set.singleton (v, combine paiSto  strSto vecSto)
--                              _ -> Set.empty
--            combine paiSto strSto vecSto = Lat.joins [getCoerce paiSto, getCoerce strSto, getCoerce vecSto] -- XXX: this undoes any strong updates since the pair store will not have the same updates as the strStore!
--            initialCoerceSto :: CoerceStore AllVal Adr to
--            initialCoerceSto = CoerceStore initialSto
--            initialState = context <+> context <+> initialCoerceSto <+> initialCoerceSto <+> initialCoerceSto




-- | Run a computation that requires seperate stores an 
-- combine the seperate store into a single one.
-- runSep :: (Exp


--newtype CombinedStore adr v = CombinedStore { getCombinedStore :: Map adr (AllVal v) }
--                           deriving (Eq, Ord, Show, Joinable, BottomLattice)
--
--instance (Coerce (AllVal v) to, Coerce to (AllVal v), Joinable v, Joinable to, Ord adr) => Store (CombinedStore adr v) adr to where
--   emptySto = CoerceStore emptySto
--   lookupSto adr = fmap coerce . lookupSto adr . getCoerce
--   extendSto adr val = CoerceStore . extendSto adr (coerce val) . getCoerce
--   updateSto adr val = CoerceStore . updateSto adr (coerce val) . getCoerce
--   updateStoWith = undefined
--


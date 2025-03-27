{-# LANGUAGE ConstraintKinds, FlexibleContexts, UndecidableInstances #-}
{-# LANGUAGE DeriveGeneric, DeriveAnyClass #-}
-- | Memory model for analyses that use the abstract domain for Scheme.
--
-- It specifies the notion of a "store" which is an abstraction of  the actual program memory as a function from a finite set of addresses to an abstract value.
--
-- The memory of a Scheme program is divided into multiple disjoint regions:
--
-- * A region to store the values of variables (Adr)
-- * A region to store strings (SAdr)
-- * A region to store vectors (VAdr)
-- * A region to store pairs (PAdr)
--
-- All other values are entirely immutable and therefore do not have to be allocated in a store.
--
-- The Domain.Scheme.Class defines the type for each of these addresses. This module provides a sensible concrete type for these addresses.
module Domain.Scheme.Store(
   StoreVal(..),
   SchemeAdr(..),
   ForAllStored
) where


import Lattice.Class
import Lattice.Trace
import Syntax.Ide
import Control.DeepSeq
import GHC.Generics (Generic)
import Domain.Scheme.Class hiding (Env)
import Data.Kind

data SchemeAdr e ctx = VarAdr !Ide !ctx   --  ^ variables
                     | PtrAdr !e   !ctx   --  heap allocated values
                     | PrrAdr !String     -- ^ primiitives
                     | TopAdr
                    deriving (Eq, Ord, Show, Generic, NFData)

instance TopLattice (SchemeAdr e ctx) where
  top = TopAdr


------------------------------------------------------------
-- Combined Scheme values
------------------------------------------------------------

-- | Combined Scheme values representing vectors, strings, pairs
-- and variables used for storing them in a single store.
data StoreVal v  = PaiVal (PaiDom v)
                 | StrVal (StrDom v)
                 | VecVal (VecDom v)
                 | VarVal (VarDom v)
                deriving Generic

type ForAllStored :: (Type -> Constraint) -> Type -> Constraint
type ForAllStored c v = (c (PaiDom v), c (StrDom v), c (VecDom v), c (VarDom v))

deriving instance (ForAllStored Ord v) =>  Ord (StoreVal v)
deriving instance (ForAllStored Eq v) =>  Eq (StoreVal v)
deriving instance (ForAllStored Show v) =>  Show (StoreVal v)

instance (ForAllStored NFData v) => NFData (StoreVal v)

-- | Instance of @PartialOrder@ for @StoreVal@, since values of the
-- corresponding type can only be stored together, the comparison
-- is only defined pointwise instead of using its carthesian product.
-- Any mismatching Scheme type is illegal.
instance (ForAllStored PartialOrder v,
          ForAllStored Show v)
  => PartialOrder (StoreVal v) where
  
  leq (PaiVal a) (PaiVal b) = leq a b
  leq (StrVal a) (StrVal b) = leq a b
  leq (VecVal a) (VecVal b) = leq a b
  leq (VarVal a) (VarVal b) = leq a b
  leq a b = error $  "leq: incompatible types, comparing " ++ show a ++ " with " ++ show b

-- | Instance of @Joinable@ implemented in a point-wise fashion
instance (ForAllStored Joinable v,
          ForAllStored Show v) => Joinable (StoreVal v) where
  join (PaiVal a) (PaiVal b) = PaiVal $ join a b
  join (StrVal a) (StrVal b) = StrVal $ join a b
  join (VecVal a) (VecVal b) = VecVal $ join a b
  join (VarVal a) (VarVal b) = VarVal $ join a b
  join a b = error $ "join: incompatible types, joining " ++ show a ++ " with " ++ show b

-- | Stored values are traceable
instance (ForAllStored (Trace adr) v, Ord adr) => Trace adr (StoreVal v) where
  trace (PaiVal a) = trace a
  trace (StrVal a) = trace a
  trace (VecVal a) = trace a
  trace (VarVal a) = trace a
  

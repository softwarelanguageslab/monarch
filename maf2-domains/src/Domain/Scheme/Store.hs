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
-- All other values are immutable and therefore do not have to be allocated in a store.
--
-- The Domain.Scheme.Class defines the type for each of these addresses. This module provides a sensible concrete type for these addresses.
module Domain.Scheme.Store(
    -- * Constraints
    ForAllStored,
    -- * Address types
    PaiAdr(..),
    StrAdr(..),
    VecAdr(..),
    VarAdr(..),
    SchemeAdr(..),
    -- * Combined store
    SchemeStore(..),
    emptySchemeStore,
    -- * Lenses for store fields
    paiStore,
    strStore,
    vecStore,
    varStore,
    -- * StoreL class
    StoreL(..)
) where


import Lattice.Trace
import Lattice.Class (Joinable(join), BottomLattice(bottom))
import Syntax.Ide
import Control.DeepSeq
import GHC.Generics (Generic)
import Domain.Scheme.Class hiding (Env)
import Data.Kind
import Syntax.Span
import qualified Data.Set as Set
import Domain.Address (AddressWithCtx (..))
import qualified Syntax.Span as Span
import Lattice.Class (TopLattice (top))
import Data.Map (Map)
import Control.Lens
import qualified Data.Map as Map

------------------------------------------------------------
-- Concrete address types
------------------------------------------------------------

-- Each region has its corresponding address in the store, 
-- defined as its own, unique type.
--
-- Each class of addresses also includes a special "Top" address, 
-- which is used by ⊤ values when they are dereferenced.

data PaiAdr e ctx = PaiAdr !e !ctx   -- ^ pairs, allocation-site based
                  | PaiTop 
                  deriving (Eq, Ord, Generic, Show, NFData)
data VecAdr e ctx = VecAdr !e !ctx   -- ^ vectors, allocation-site based
                  | VecTop
                  deriving (Eq, Ord, Generic, Show, NFData)
data StrAdr e ctx = StrAdr !e !ctx   -- ^ strings, allocation-site based
                  | StrTop
                  deriving (Eq, Ord, Generic, Show, NFData)
data VarAdr ctx   = VrrAdr !Ide !ctx -- ^ variables
                  | PrrAdr String    -- ^ primitives
                  | VrrTop
                  deriving (Eq, Ord, Generic, Show, NFData)
--
-- PaiAdr
--

instance SpanOf e => SpanOf (PaiAdr e ctx) where
    spanOf (PaiAdr e _) = spanOf e
    spanOf PaiTop = Span.dummySpan

instance AddressWithCtx ctx (PaiAdr e ctx) where
  replaceCtx ctx' (PaiAdr e _) = PaiAdr e ctx'
  replaceCtx _ PaiTop = PaiTop

instance TopLattice (PaiAdr e ctx) where 
    top = PaiTop

-- 
-- VecAdr 
--


instance SpanOf e => SpanOf (VecAdr e ctx) where
    spanOf (VecAdr e _) = spanOf e
    spanOf VecTop = Span.dummySpan

instance AddressWithCtx ctx (VecAdr e ctx) where
  replaceCtx ctx' (VecAdr e _) = VecAdr e ctx'
  replaceCtx _ VecTop = VecTop

instance TopLattice (VecAdr e ctx) where
    top = VecTop

--
-- StrAdr
--


instance SpanOf e => SpanOf (StrAdr e ctx) where
    spanOf (StrAdr e _) = spanOf e
    spanOf StrTop = Span.dummySpan

instance AddressWithCtx ctx (StrAdr e ctx) where
  replaceCtx ctx' (StrAdr e _) = StrAdr e ctx'
  replaceCtx _ StrTop = StrTop

instance TopLattice (StrAdr e ctx) where
    top = StrTop


--
-- VarAdr
--

instance SpanOf (VarAdr ctx) where
    spanOf (VrrAdr ide _) = spanOf ide
    spanOf (PrrAdr _) = Span.dummySpan
    spanOf VrrTop = Span.dummySpan

instance AddressWithCtx ctx (VarAdr ctx) where
  replaceCtx ctx' (VrrAdr ide _) = VrrAdr ide ctx'
  replaceCtx _ (PrrAdr str) = PrrAdr str
  replaceCtx _ VrrTop = VrrTop

instance TopLattice (VarAdr ctx) where 
  top = VrrTop

-- Tracing through the store requires a combined address that can be
-- returned from the trace. We encode this combined addresses as a sum 
-- type and call it "SchemeAdr".
data SchemeAdr e ctx = SVarAdr (VarAdr ctx)
                     | SPaiAdr (PaiAdr e ctx)
                     | SStrAdr (StrAdr e ctx) 
                     | SVecAdr (VecAdr e ctx) 
                    deriving (Eq, Ord, Generic, Show, NFData)


instance AddressWithCtx ctx (SchemeAdr e ctx) where
  replaceCtx ctx' = \case SVarAdr adr -> SVarAdr (replaceCtx ctx' adr)
                          SPaiAdr adr -> SPaiAdr (replaceCtx ctx' adr)
                          SStrAdr adr -> SStrAdr (replaceCtx ctx' adr)
                          SVecAdr adr -> SVecAdr (replaceCtx ctx' adr)

instance (SpanOf e) => SpanOf (SchemeAdr e ctx) where
    spanOf (SVarAdr adr) = spanOf adr
    spanOf (SPaiAdr adr) = spanOf adr
    spanOf (SStrAdr adr) = spanOf adr
    spanOf (SVecAdr adr) = spanOf adr


-- Tracing disjoint pointers into the pointer union
instance (Ord e, Ord ctx) => Trace (SchemeAdr e ctx) (VarAdr ctx) where
  trace adr = Set.singleton (SVarAdr adr)
instance (Ord e, Ord ctx) => Trace (SchemeAdr e ctx) (PaiAdr e ctx) where
  trace adr = Set.singleton (SPaiAdr adr)
instance (Ord e, Ord ctx) => Trace (SchemeAdr e ctx) (StrAdr
 e ctx) where
  trace adr = Set.singleton (SStrAdr adr)
instance (Ord e, Ord ctx) => Trace (SchemeAdr e ctx) (VecAdr e ctx) where
  trace adr = Set.singleton (SVecAdr adr)

------------------------------------------------------------
-- Constraints on all store-allocated domains
------------------------------------------------------------

-- | A constraint on all store-allocated values 
type ForAllStored :: (Type -> Constraint) -> Type -> Constraint
type ForAllStored c v = (c (PaiDom v), c (StrDom v), c (VecDom v), c (VarDom v))

------------------------------------------------------------
-- Store
------------------------------------------------------------

data SchemeStore exp ctx v = SchemeStore {
    _paiStore :: Map (PaiAdr exp ctx) (PaiDom v),
    _strStore :: Map (StrAdr exp ctx) (StrDom v),
    _vecStore :: Map (VecAdr exp ctx) (VecDom v),
    _varStore :: Map (VarAdr ctx) (VarDom v)
} deriving (Generic)


emptySchemeStore :: SchemeStore exp ctx v
emptySchemeStore = SchemeStore  Map.empty Map.empty Map.empty Map.empty

instance (ForAllStored Joinable v, Ord exp, Ord ctx) => Joinable (SchemeStore exp ctx v) where
    join (SchemeStore pai1 str1 vec1 var1) (SchemeStore pai2 str2 vec2 var2) =
        SchemeStore (join pai1 pai2)
                    (join str1 str2)
                    (join vec1 vec2)
                    (join var1 var2)

instance BottomLattice (SchemeStore exp ctx v) where
    bottom = SchemeStore bottom bottom bottom bottom

deriving instance (ForAllStored Show v, Show exp, Show ctx) => Show (SchemeStore exp ctx v)
deriving instance (ForAllStored Eq v, Eq exp, Eq ctx) => Eq (SchemeStore exp ctx v)
deriving instance (ForAllStored Ord v, Ord exp, Ord ctx) => Ord (SchemeStore exp ctx v)

instance (ForAllStored NFData v, ForAllAddresses NFData v, NFData exp, NFData ctx) => NFData (SchemeStore exp ctx v)

$(makeLenses ''SchemeStore)

class StoreL adr vlu store | store adr -> vlu where 
    storeLens :: Lens' store (Map adr vlu)

instance (pai ~ (PaiDom v)) => StoreL (PaiAdr exp ctx) pai (SchemeStore exp ctx v) where
    storeLens = paiStore
instance (str ~ (StrDom v)) => StoreL (StrAdr exp ctx) str (SchemeStore exp ctx v) where
    storeLens = strStore
instance (vec ~ (VecDom v)) => StoreL (VecAdr exp ctx) vec (SchemeStore exp ctx v) where
    storeLens = vecStore
instance (var ~ (VarDom v)) => StoreL (VarAdr ctx) var (SchemeStore exp ctx v) where
    storeLens = varStore

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
    PrrAdr(..),
    SchemeAdr(..),
) where


import Lattice.Trace
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
-- PrrAdr
--

data PrrAdr       = PrrAdr !String   -- ^ primitives
                  | PrrTop
                  deriving (Eq, Ord, Generic, Show, NFData)

instance SpanOf PrrAdr where
    spanOf (PrrAdr _) = Span.dummySpan -- primitives don't have a source location, so we return a dummy span
    spanOf PrrTop     = Span.dummySpan


instance AddressWithCtx ctx (PrrAdr) where
  replaceCtx _ adr = adr -- PrrAdr does not contain a context, so we return it unchanged

instance TopLattice PrrAdr where
    top = PrrTop



--
-- VarAdr
--

instance SpanOf (VarAdr ctx) where
    spanOf (VrrAdr ide _) = spanOf ide
    spanOf VrrTop = Span.dummySpan

instance AddressWithCtx ctx (VarAdr ctx) where
  replaceCtx ctx' (VrrAdr ide _) = VrrAdr ide ctx'
  replaceCtx _ VrrTop = VrrTop

-- Tracing through the store requires a combined address that can be
-- returned from the trace. We encode this combined addresses as a sum 
-- type and call it "SchemeAdr".
data SchemeAdr e ctx = SVarAdr (VarAdr ctx)
                     | SPaiAdr (PaiAdr e ctx)
                     | SStrAdr (StrAdr e ctx) 
                     | SVecAdr (VecAdr e ctx) 
                     | SPrrAdr PrrAdr
                    deriving (Eq, Ord, Generic, Show, NFData)


instance AddressWithCtx ctx (SchemeAdr e ctx) where
  replaceCtx ctx' = \case SVarAdr adr -> SVarAdr (replaceCtx ctx' adr)
                          SPaiAdr adr -> SPaiAdr (replaceCtx ctx' adr)
                          SStrAdr adr -> SStrAdr (replaceCtx ctx' adr)
                          SVecAdr adr -> SVecAdr (replaceCtx ctx' adr)
                          SPrrAdr adr -> SPrrAdr (replaceCtx ctx' adr)

instance (SpanOf e) => SpanOf (SchemeAdr e ctx) where
    spanOf (SVarAdr adr) = spanOf adr
    spanOf (SPaiAdr adr) = spanOf adr
    spanOf (SStrAdr adr) = spanOf adr
    spanOf (SVecAdr adr) = spanOf adr
    spanOf (SPrrAdr adr) = spanOf adr


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


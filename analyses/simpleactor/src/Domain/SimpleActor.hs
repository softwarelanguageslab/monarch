{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
-- | An actor domain based on the Scheme domain with 
-- symbolic values.
module Domain.SimpleActor(
    ActorValue,
    SymActorValue,
    SymVar) where 

import Prelude hiding (length)
import Lattice.ConstantPropagationLattice
import Domain.Scheme hiding (Exp, Env)
import Domain.Core.StringDomain.ConstantPropagation ()
import Syntax.AST
import Domain.Symbolic (PairedSymbolic)
import Domain.Scheme.Derived.Top (SchemeTopLifted (..))
import Data.Kind
import Domain.Core.VectorDomain (PIVector)
import qualified Lattice.TopLiftedLattice as TL
import Domain.Core.PairDomain (SimplePair)
import Domain.Core.StringDomain (StringLattice(..))
import qualified Analysis.ASE.SymbolicVariable as ASE

-- | An address that is parameterized by the type of context 
-- used for allocating that address.
type AdrK = Type -> Type

------------------------------------------------------------
-- Regular domain (i.e., without symbolic values)
------------------------------------------------------------


-- | A SimpleActor abstract value
type ActorValue k adr = CPActorValue Str adr k Exp

-- | Type of strings in the abstract domain,
-- strings are represented as pointers in the Scheme
-- domain since they are mutable. In the simple actor model,
-- strings are not mutable.
type Str = SchemeString (CP String)

------------------------------------------------------------
-- Domain with symbolic information
------------------------------------------------------------

-- | The type of symbolic variables
type SymVar = ASE.SymbolicVariable

-- | Values paired with symbolic representations used in the SimpleActor language.
-- It is parameterized by a context type "k" and an address type "adr".
type SymActorValue :: Type -> AdrK -> Type
type SymActorValue k (adr :: AdrK) = 
    PairedSymbolic (SchemeTopLifted (CPActorValue SymStr adr k Exp)) Exp k ASE.SymbolicVariable

-- | String representation used with abstract symbolic domains. 
-- We do not provide a symbolic representation of a string, hence 
-- the string domain is constructed from the constant propagation domain 
-- that was extended with a top value.
type SymStr = SchemeString (CP String)


-- Rendering 'SymActorValue' a proper abstraction for the Scheme domain

type instance VarDom (SymActorValue k adr) = SymActorValue k adr
type instance VecDom (SymActorValue k adr) =     PIVector (SymActorValue k adr)
                                                          (SymActorValue k adr)
                                                          (SymActorValue k adr)
                                                          Str
                                                          (SymActorValue k adr)
type instance PaiDom (SymActorValue k adr) = TL.TopLifted (SimplePair (SymActorValue k adr))

-- TODO: this is actually from `maf2-scv` in `Domain.Symbolic.CPDomain` which 
-- reflects `ActorValue` perhaps we should use that instead.
instance {-# OVERLAPPING #-} StringLattice (SchemeString (CP String)) (SymActorValue k adr) (SymActorValue k adr) (SymActorValue k adr) where
  length = undefined
  append = undefined
  ref = undefined
  set = undefined
  stringLt = undefined
  toNumber = undefined
  makeString = undefined
  topString = SchemeString Top
   -- length = (length @_ @v @v @v . sconst) >=> (return . mkLeft . SchemeTopLifted . TL.Value . Domain.inject)
   -- append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   -- ref s i = case (getTopLifted $ leftValue i) of 
   --             TL.Value v -> mkLeft . SchemeTopLifted . TL.Value . insertChar <$> (ref (sconst s) =<< integers v)
   --             TL.Top     -> return $ mkLeft $ SchemeTopLifted  $ TL.Value $ insertChar $ top
   -- stringLt s1 s2  = mkLeft . SchemeTopLifted . TL.Value . insertBool <$> stringLt (sconst s1) (sconst s2)
   -- toNumber = (toNumber . sconst) >=> (return . mkLeft . SchemeTopLifted . TL.Value . insertInt)
   -- set = undefined
   -- makeString = undefined

{-# OPTIONS_GHC -Wno-orphans #-}
-- | Pairs a CP domain with a symbolic domain for contracts
-- on actors.
module Domain.Contract.Symbolic(V, Env) where

import Domain.Contract.CP
import Domain.Scheme.Modular
import Domain.Scheme.Store
import Domain.Contract.Store
import qualified Domain.Scheme.Actors.CP as CP
import Lattice.ConstantPropagationLattice
import Data.TypeLevel.HMap ((::->))
import Syntax.Scheme
import Analysis.Contracts.Behavior (UnorderedBehaviorContract)

import Domain.Symbolic (PairedSymbolic)
import Domain.Scheme.Class hiding (Exp, Env)
import Domain.Core (SimplePair, PIVector, StringDomain(..))
import Prelude hiding (length)
import Domain.Scheme.Derived.Pair (mkLeft, leftValue)

import Control.Monad
import Data.Map (Map)


type V k       = PairedSymbolic (CPContractValue k) (PaiAdr k) (VecAdr k) (StrAdr k) (EnvAdr k)

type instance VarDom (V k) = V k
type instance PaiDom (V k) = SimplePair (V k)
type instance VecDom (V k) = PIVector (V k) (V k)
type instance StrDom (V k) = SchemeString (CP String) (V k)

instance (Ord k, Show k) => StringDomain (SchemeString (CP String) (V k)) where
   type IntS (SchemeString (CP String) (V k)) = V k
   type ChaS (SchemeString (CP String) (V k)) = V k
   type BooS (SchemeString (CP String) (V k)) = V k
   length = (length . sconst) >=> (return . mkLeft . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = mkLeft . insertChar <$> (ref (sconst s) =<< integers (leftValue i))
   stringLt s1 s2  = mkLeft . insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . mkLeft . insertInt)
   set = undefined
   makeString = undefined
   topString = undefined


{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
-- | Symbolic domain combined with a constant
-- propagation domain
module Domain.Symbolic.CPDomain(CPSymbolicValue) where

import Domain.Symbolic.Paired
import Domain.Scheme
import Domain.Scheme.Modular
import Domain.Scheme.Actors.CP
import Domain
import Lattice
import qualified Syntax.Scheme as Scheme
import Data.TypeLevel.HMap((::->))

import Data.Map (Map)
import Control.Monad ((>=>))

import Prelude hiding (null, div, ceiling, round, floor, asin, sin, acos, cos, atan, tan, log, sqrt, length)

-- TODO: pass down the context as well
type CPSymbolicValue pai vec str var = 
   PairedSymbolic (CPActorValue var pai vec str ()) pai vec str var

type instance VarDom (CPSymbolicValue pai vec str var) = CPSymbolicValue pai vec str var
type instance PaiDom (CPSymbolicValue pai vec str var) = SimplePair (CPSymbolicValue pai vec str var)
type instance VecDom (CPSymbolicValue pai vec str var) = PIVector (CPSymbolicValue pai vec str var) (CPSymbolicValue pai vec str var)
type instance StrDom (CPSymbolicValue pai vec str var) = SchemeString (CP String) (CPSymbolicValue pai vec str var)

instance (Address pai, Address vec, Address str, Address var) => StringDomain (SchemeString (CP String) (CPSymbolicValue pai vec str var)) where
   type IntS (SchemeString (CP String) (CPSymbolicValue pai vec str var)) = CPSymbolicValue pai vec str var
   type ChaS (SchemeString (CP String) (CPSymbolicValue pai vec str var)) = CPSymbolicValue pai vec str var
   type BooS (SchemeString (CP String) (CPSymbolicValue pai vec str var)) = CPSymbolicValue pai vec str var
   length = (length . sconst) >=> (return . mkLeft . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = mkLeft . insertChar <$> (ref (sconst s) =<< integers (leftValue i))
   stringLt s1 s2  = mkLeft . insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . mkLeft . insertInt)
   set = undefined
   makeString = undefined


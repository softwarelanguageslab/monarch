{-# OPTIONS_GHC -Wno-orphans #-}
-- | Symbolic domain combined with a constant
-- propagation domain
module Domain.Symbolic.CPDomain(CPSymbolicValue) where

import Domain.Symbolic.Paired
import Domain.Scheme
import Domain
import Lattice
import qualified Syntax.Scheme as Scheme

import Control.Monad ((>=>))

import Prelude hiding (null, div, ceiling, round, floor, asin, sin, acos, cos, atan, tan, log, sqrt, length)

type CPSymbolicValue ptr var exp = 
   PairedSymbolic (CPValue ptr var exp) ptr var

type instance VarDom (CPSymbolicValue ptr var exp) = CPSymbolicValue ptr var exp
type instance PaiDom (CPSymbolicValue ptr var exp) = SimplePair (CPSymbolicValue ptr var exp)
type instance VecDom (CPSymbolicValue ptr var exp) = PIVector (CPSymbolicValue ptr var exp) (CPSymbolicValue ptr var exp)
type instance StrDom (CPSymbolicValue ptr var exp) = SchemeString (CP String) (CPSymbolicValue ptr var exp)

instance (Address ptr, Address var) => StringDomain (SchemeString (CP String) (CPSymbolicValue ptr var Scheme.Exp)) where
   type IntS (SchemeString (CP String) (CPSymbolicValue ptr var Scheme.Exp)) = CPSymbolicValue ptr var Scheme.Exp
   type ChaS (SchemeString (CP String) (CPSymbolicValue ptr var Scheme.Exp)) = CPSymbolicValue ptr var Scheme.Exp
   type BooS (SchemeString (CP String) (CPSymbolicValue ptr var Scheme.Exp)) = CPSymbolicValue ptr var Scheme.Exp
   length = undefined -- TODO (length . sconst) >=> (return . mkLeft . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = undefined -- TODO mkLeft . insertChar <$> (ref (sconst s) =<< integers (leftValue i))
   stringLt s1 s2  = undefined -- TODO mkLeft . insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = undefined -- TODO (toNumber . sconst) >=> (return . mkLeft . insertInt)
   set = undefined
   makeString = undefined


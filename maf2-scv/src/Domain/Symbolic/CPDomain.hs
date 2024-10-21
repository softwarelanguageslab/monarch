{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
-- | Symbolic domain combined with a constant
-- propagation domain
module Domain.Symbolic.CPDomain(CPSymbolicValue) where

import Domain.Symbolic.Paired
import Domain.Scheme
import Domain
import Lattice
import qualified Syntax.Scheme.AST as S
import Control.Monad ((>=>))

import Prelude hiding (null, div, ceiling, round, floor, asin, sin, acos, cos, atan, tan, log, sqrt, length)

-- TODO: pass down the context as well
type CPSymbolicValue pai vec str var k = 
   PairedSymbolic (CPActorValue var pai vec str k S.Exp) S.Exp k Int

type instance VarDom (CPSymbolicValue pai vec str var k) = CPSymbolicValue pai vec str var k
type instance PaiDom (CPSymbolicValue pai vec str var k) = SimplePair (CPSymbolicValue pai vec str var k)
type instance VecDom (CPSymbolicValue pai vec str var k) = PIVector (CPSymbolicValue pai vec str var k) (CPSymbolicValue pai vec str var k)
type instance StrDom (CPSymbolicValue pai vec str var k) = SchemeString (CP String) (CPSymbolicValue pai vec str var k)

instance (Ord k, Address (pai k), Address (vec k), Address (str k), Address (var k)) => StringDomain (SchemeString (CP String) (CPSymbolicValue pai vec str var k)) where
   type IntS (SchemeString (CP String) (CPSymbolicValue pai vec str var k)) = CPSymbolicValue pai vec str var k
   type ChaS (SchemeString (CP String) (CPSymbolicValue pai vec str var k)) = CPSymbolicValue pai vec str var k
   type BooS (SchemeString (CP String) (CPSymbolicValue pai vec str var k)) = CPSymbolicValue pai vec str var k
   length = (length . sconst) >=> (return . mkLeft . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = mkLeft . insertChar <$> (ref (sconst s) =<< integers (leftValue i))
   stringLt s1 s2  = mkLeft . insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . mkLeft . insertInt)
   set = undefined
   makeString = undefined


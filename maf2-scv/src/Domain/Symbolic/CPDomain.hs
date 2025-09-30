{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators, UndecidableInstances #-}
-- | Symbolic domain combined with a constant
-- propagation domain
module Domain.Symbolic.CPDomain(CPSymbolicValue) where

import Domain.Symbolic.Paired
import Domain.Scheme
import Domain.Scheme.Derived.Top
import Domain
import Lattice
import qualified Lattice.TopLiftedLattice as TL
import qualified Syntax.Scheme.AST as S
import Control.Monad ((>=>))


import Prelude hiding (null, div, ceiling, round, floor, asin, sin, acos, cos, atan, tan, log, sqrt, length)

type Str = SchemeTopLifted (SchemeString (CP String))

type CPSymbolicValue var k =
   PairedSymbolic (SchemeTopLifted (CPActorValue Str var k S.Exp)) S.Exp k Int

type instance VarDom (CPSymbolicValue var k) = CPSymbolicValue var k
type instance PaiDom (CPSymbolicValue var k) = TopLifted (SimplePair (CPSymbolicValue var k))
type instance VecDom (CPSymbolicValue var k) = PIVector (CPSymbolicValue var k) (CPSymbolicValue var k)
                                                        {- bln -} (CPSymbolicValue var k)
                                                        {- str -} Str
                                                        {- rea -} (CPSymbolicValue var k)
                                                        
-- type instance StrDom (CPSymbolicValue var k) = SchemeString (CP String) (CPSymbolicValue var k)

-- instance (Ord k, Address (var k)) => StringDomain (SchemeString (CP String) (CPSymbolicValue var k))
--                                                   {- bln -} (CPSymbolicValue var k)
--                                                   {- int -} (CPSymbolicValue var k)
--                                                   {- chr -} (CPSymbolicValue var k)  where
--    length          = (length . sconst) >=> (return . mkLeft . SchemeTopLifted . Value . insertInt)
--    append s1 s2    = SchemeString <$> append (sconst s1) (sconst s2)
--    ref s i         = case getTopLifted $ leftValue i of
--                         TL.Value v -> mkLeft . SchemeTopLifted . TL.Value . insertChar <$> (ref (sconst s) =<< integers v)
--                         TL.Top     -> return $ mkLeft $ SchemeTopLifted  $ TL.Value $ insertChar top
--    stringLt s1 s2  = mkLeft . SchemeTopLifted . TL.Value . insertBool <$> stringLt (sconst s1) (sconst s2)
--    toNumber        = (toNumber . sconst) >=> (return . mkLeft . SchemeTopLifted . TL.Value . insertInt)
--    set             = undefined
--    makeString      = undefined


{-# LANGUAGE UndecidableInstances #-}
-- | An actor domain based on the Scheme domain with 
-- symbolic values.
module Domain.SimpleActor(ActorValue) where 

import Prelude hiding (length)
import Lattice.ConstantPropagationLattice
import qualified Lattice.TopLiftedLattice as TL
import Domain.Scheme hiding (Exp, Env)
import Domain.Scheme.Store
import Domain.Scheme.Derived.Top
import Domain.Symbolic.Paired
import Domain.Core.VectorDomain.PIVector
import Domain.Core.StringDomain.Class
import Domain.Core.StringDomain.ConstantPropagation ()
import Domain.Core.PairDomain
import Syntax.AST
import Data.Kind
import Control.Monad
import Lattice.Class


-- | A SimpleActor abstract value
type ActorValue k adr = CPActorValue Str adr k Exp

-- | Type of strings in the abstract domain,
-- strings are represented as pointers in the Scheme
-- domain since they are mutable. In the simple actor model,
-- strings are not mutable.
type Str = SchemeString (CP String)

-- type Str = SchemeTopLifted (SchemeString (CP String))



-- type AdrK = Type -> Type

-- type Str = SchemeTopLifted (SchemeString (CP String))

-- type ActorValue' k (adr :: AdrK) sym = PairedSymbolic 
--    (SchemeTopLifted (CPActorValue Str adr k Exp))  Exp k sym

-- -- | Actor value with standard Scheme addresses
-- type ActorValue k sym = ActorValue' k (SchemeAdr Exp) sym

-- -- | A variant of the actor value with the same address for every type of address
-- type ActorValueUnified k (adr :: Type -> Type) sym = PairedSymbolic 
--    (CPActorValue Str adr k Exp)  Exp k sym

-- type instance VarDom (ActorValue' k adr sym) = ActorValue' k adr sym
-- type instance VecDom (ActorValue' k adr sym) = PIVector (ActorValue' k adr sym)
--                                                         (ActorValue' k adr sym)
--                                                         (ActorValue' k adr sym)
--                                                         Str
--                                                         (ActorValue' k adr sym)
-- type instance PaiDom (ActorValue' k adr sym) = TL.TopLifted (SimplePair (ActorValue' k adr sym))
-- -- type instance StrDom (ActorValue' k adr sym) = SchemeString (CP String) 

-- type family ForAllAdr (c :: [Type -> Constraint]) v :: Constraint where   
--    ForAllAdr '[] v = () 
--    ForAllAdr (c ': cs) v = (c (Adr v), ForAllAdr cs v)

-- -- TODO: this is actually from `maf2-scv` in `Domain.Symbolic.CPDomain` which 
-- -- reflects `ActorValue` perhaps we should use that instead.
-- instance (Show k, Ord k, Eq sym, Ord sym, ForAllAdr '[Show, Eq, Ord] (ActorValue' k adr sym)) => StringDomain (SchemeString (CP String))
--                                                                                                               {- bln -} (ActorValue' k adr sym)
--                                                                                                               {- int -} (ActorValue' k adr sym)
--                                                                                                               {- chr -} (ActorValue' k adr sym)  where
--    length = (length @_ @(CP Bool) @(CP Integer) @(CP Char) . sconst) >=> (return . mkLeft . SchemeTopLifted . TL.Value . insertInt)
--    append s1 s2 = SchemeString <$> append @_ @(CP Bool) @(CP Integer) @(CP Char) (sconst s1) (sconst s2)
--    ref s i = case (getTopLifted $ leftValue i) of 
--                TL.Value v -> mkLeft . SchemeTopLifted . TL.Value . insertChar <$> (ref @_ @(CP Bool) @(CP Integer) @(CP Char) (sconst s) =<< integers v)
--                TL.Top     -> return $ mkLeft $ SchemeTopLifted  $ TL.Value $ insertChar $ top
--    stringLt s1 s2  = mkLeft . SchemeTopLifted . TL.Value . insertBool <$> stringLt @_ @_ @(CP Integer) @(CP Char) (sconst s1) (sconst s2)
--    toNumber = (toNumber @_ @(CP Bool) @_ @(CP Char) . sconst) >=> (return . mkLeft . SchemeTopLifted . TL.Value . insertInt)
--    set = undefined
--    makeString = undefined

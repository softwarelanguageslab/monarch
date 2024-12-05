{-# LANGUAGE UndecidableInstances #-}
-- | An actor domain based on the Scheme domain with 
-- symbolic values.
module Domain.SimpleActor(ActorValue, ActorValueUnified, ActorValue') where 

import Prelude hiding (length)
import Control.Monad
import Lattice.ConstantPropagationLattice
import Domain.Scheme hiding (Exp, Env)
import Domain.Scheme.Store hiding (Env)
import Domain.Symbolic.Paired
import Domain.Core.VectorDomain.PIVector
import Domain.Core.PairDomain
import Domain.Core.StringDomain
import Syntax.AST
import Data.Kind

type AdrK = Type -> Type

type ActorValue' k (adr :: AdrK) (padr :: AdrK) (vadr :: AdrK) (sadr :: AdrK) = PairedSymbolic 
   (CPActorValue adr padr vadr sadr k Exp)  Exp k (adr k)

-- | Actor value with standard Scheme addresses
type ActorValue k = ActorValue' k EnvAdr (PaiAdrE Exp) (VecAdrE Exp) (StrAdrE Exp)

-- | A variant of the actor value with the same address for every type of address
type ActorValueUnified k (adr :: Type -> Type) = PairedSymbolic 
   (CPActorValue adr adr adr adr k Exp)  Exp k (adr k)

type instance VarDom (ActorValue' k adr padr vadr sadr) = ActorValue' k adr padr vadr sadr
type instance VecDom (ActorValue' k adr padr vadr sadr) = PIVector (ActorValue' k adr padr vadr sadr) (ActorValue' k adr padr vadr sadr)
type instance PaiDom (ActorValue' k adr padr vadr sadr) = SimplePair (ActorValue' k adr padr vadr sadr)
type instance StrDom (ActorValue' k adr padr vadr sadr) = SchemeString (CP String) (ActorValue' k adr padr vadr sadr)

type family ForAllAdr (c :: [Type -> Constraint]) v :: Constraint where   
   ForAllAdr '[] v = () 
   ForAllAdr (c ': cs) v = (c (Adr v), c (PAdr v), c (SAdr v), c (VAdr v), ForAllAdr cs v)

-- TODO: this is actually from `maf2-scv` in `Domain.Symbolic.CPDomain` which 
-- reflects `ActorValue` perhaps we should use that instead.
instance (Show k, Ord k, ForAllAdr '[Show, Eq, Ord] (ActorValue' k adr padr vadr sadr)) => StringDomain (SchemeString (CP String) (ActorValue' k adr padr vadr sadr)) where
   type IntS (SchemeString (CP String) (ActorValue' k adr padr vadr sadr)) = ActorValue' k adr padr vadr sadr
   type ChaS (SchemeString (CP String) (ActorValue' k adr padr vadr sadr)) = ActorValue' k adr padr vadr sadr
   type BooS (SchemeString (CP String) (ActorValue' k adr padr vadr sadr)) = ActorValue' k adr padr vadr sadr
   length = (length . sconst) >=> (return . mkLeft . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = mkLeft . insertChar <$> (ref (sconst s) =<< integers (leftValue i))
   stringLt s1 s2  = mkLeft . insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . mkLeft . insertInt)
   set = undefined
   makeString = undefined



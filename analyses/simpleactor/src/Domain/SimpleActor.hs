{-# LANGUAGE UndecidableInstances #-}
-- | An actor domain based on the Scheme domain with 
-- symbolic values.
module Domain.SimpleActor(ActorValue, ActorValueUnified, ActorValue') where 

import Prelude hiding (length)
import Control.Monad
import Lattice.Class (top)
import Lattice.ConstantPropagationLattice
import qualified Lattice.TopLiftedLattice as TL
import Domain.Scheme hiding (Exp, Env)
import Domain.Scheme.Store hiding (Env)
import Domain.Scheme.Derived.Top
import Domain.Symbolic.Paired
import Domain.Core.BoolDomain.Class (BoolFor)
import Domain.Core.VectorDomain.PIVector
import Domain.Core.PairDomain
import Domain.Core.PairDomain.TopLifted
import Domain.Core.StringDomain
import Syntax.AST
import Data.Kind

type AdrK = Type -> Type

type ActorValue' k (adr :: AdrK) (padr :: AdrK) (vadr :: AdrK) (sadr :: AdrK) sym = PairedSymbolic 
   (SchemeTopLifted (CPActorValue adr padr vadr sadr k Exp))  Exp k sym

-- | Actor value with standard Scheme addresses
type ActorValue k sym = ActorValue' k EnvAdr (PaiAdrE Exp) (VecAdrE Exp) (StrAdrE Exp) sym

-- | A variant of the actor value with the same address for every type of address
type ActorValueUnified k (adr :: Type -> Type) sym = PairedSymbolic 
   (CPActorValue adr adr adr adr k Exp)  Exp k sym

type instance VarDom (ActorValue' k adr padr vadr sadr sym) = ActorValue' k adr padr vadr sadr sym
type instance VecDom (ActorValue' k adr padr vadr sadr sym) = PIVector (ActorValue' k adr padr vadr sadr sym) (ActorValue' k adr padr vadr sadr sym)
type instance PaiDom (ActorValue' k adr padr vadr sadr sym) = TL.TopLifted (SimplePair (ActorValue' k adr padr vadr sadr sym))
type instance StrDom (ActorValue' k adr padr vadr sadr sym) = SchemeString (CP String) (ActorValue' k adr padr vadr sadr sym)

type family ForAllAdr (c :: [Type -> Constraint]) v :: Constraint where   
   ForAllAdr '[] v = () 
   ForAllAdr (c ': cs) v = (c (Adr v), c (PAdr v), c (SAdr v), c (VAdr v), ForAllAdr cs v)

type instance BoolFor (SchemeString (CP String) (ActorValue' k adr padr vadr sadr sym)) = ActorValue' k adr padr vadr sadr sym

-- TODO: this is actually from `maf2-scv` in `Domain.Symbolic.CPDomain` which 
-- reflects `ActorValue` perhaps we should use that instead.
instance (Show k, Ord k, Eq sym, Ord sym, ForAllAdr '[Show, Eq, Ord] (ActorValue' k adr padr vadr sadr sym)) => StringDomain (SchemeString (CP String) (ActorValue' k adr padr vadr sadr sym)) where
   type IntS (SchemeString (CP String) (ActorValue' k adr padr vadr sadr sym)) = ActorValue' k adr padr vadr sadr sym
   type ChaS (SchemeString (CP String) (ActorValue' k adr padr vadr sadr sym)) = ActorValue' k adr padr vadr sadr sym
   length = (length . sconst) >=> (return . mkLeft . SchemeTopLifted . TL.Value . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = case (getTopLifted $ leftValue i) of 
               TL.Value v -> mkLeft . SchemeTopLifted . TL.Value . insertChar <$> (ref (sconst s) =<< integers v)
               TL.Top     -> return $ mkLeft $ SchemeTopLifted  $ TL.Value $ insertChar $ top
   stringLt s1 s2  = mkLeft . SchemeTopLifted . TL.Value . insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . mkLeft . SchemeTopLifted . TL.Value . insertInt)
   set = undefined
   makeString = undefined

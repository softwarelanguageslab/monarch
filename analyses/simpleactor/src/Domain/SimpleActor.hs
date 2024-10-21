-- | An actor domain based on the Scheme domain with 
-- symbolic values.
module Domain.SimpleActor(ActorValue) where 

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

type ActorValue k = PairedSymbolic 
   (CPActorValue EnvAdr (PaiAdrE Exp) (VecAdrE Exp) (StrAdrE Exp) k Exp)  Exp k Int

type instance VarDom (ActorValue k) = ActorValue k
type instance VecDom (ActorValue k) = PIVector (ActorValue k) (ActorValue k)
type instance PaiDom (ActorValue k) = SimplePair (ActorValue k)
type instance StrDom (ActorValue k) = SchemeString (CP String) (ActorValue k)

-- TODO: this is actually from `maf2-scv` in `Domain.Symbolic.CPDomain` which 
-- reflects `ActorValue` perhaps we should use that instead.
instance (Show k, Ord k) => StringDomain (SchemeString (CP String) (ActorValue k)) where
   type IntS (SchemeString (CP String) (ActorValue k)) = ActorValue k
   type ChaS (SchemeString (CP String) (ActorValue k)) = ActorValue k
   type BooS (SchemeString (CP String) (ActorValue k)) = ActorValue k
   length = (length . sconst) >=> (return . mkLeft . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = mkLeft . insertChar <$> (ref (sconst s) =<< integers (leftValue i))
   stringLt s1 s2  = mkLeft . insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . mkLeft . insertInt)
   set = undefined
   makeString = undefined



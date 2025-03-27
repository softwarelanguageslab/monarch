module Domain.Scheme.Actors.CP(CPActorValue, CPActorMapping, Pid(..)) where

import Domain.Scheme.Modular
import Data.TypeLevel.HMap ((::->))
import Data.Map (Map)
import Lattice
import Domain.Scheme.Class hiding (Exp)
import Domain.Actor
import Domain.Core
import Data.HashMap.Strict (HashMap)

type CPActorMapping adr ctx exp =
    '[ RealConf ::-> CP Double,
       IntConf ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> HashMap String (adr ctx),
       ExpConf ::-> exp,
       AdrConf ::-> adr ctx,
       PidConf ::-> Pid exp ctx
     ]

-- | Type of values in the analysis
type CPActorValue adr ctx exp =
  SchemeVal (CPActorMapping adr ctx exp)


type instance VarDom (CPActorValue adr ctx exp) = CPActorValue adr  ctx exp
type instance PaiDom (CPActorValue adr ctx exp) = SimplePair (CPActorValue adr ctx exp)
type instance VecDom (CPActorValue adr ctx exp) = PIVector (CPActorValue adr ctx exp) (CPActorValue adr ctx exp) 
type instance StrDom (CPActorValue adr ctx exp) = SchemeString (CP String) (CPActorValue adr ctx exp) 


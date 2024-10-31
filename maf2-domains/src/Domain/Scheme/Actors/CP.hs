module Domain.Scheme.Actors.CP(CPActorValue, CPActorMapping, Pid(..)) where

import Domain.Scheme.Modular
import Data.TypeLevel.HMap ((::->))
import Data.Map (Map)
import Lattice
import Domain.Scheme.Class hiding (Exp)
import Domain.Scheme.Actors.Class
import Domain.Core

type CPActorMapping adr pai vec str ctx exp =
    '[ RealConf ::-> CP Double,
       IntConf ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> Map String (adr ctx),
       ExpConf ::-> exp,
       StrConf ::-> str ctx,
       PaiConf ::-> pai ctx,
       VecConf ::-> vec ctx,
       VarConf ::-> adr ctx,
       PidConf ::-> Pid exp ctx
     ]

-- | Type of values in the analysis
type CPActorValue adr pai vec str ctx exp =
  SchemeVal (CPActorMapping adr pai vec str ctx exp)


type instance VarDom (CPActorValue adr pai vec str ctx exp) = CPActorValue adr pai vec str ctx exp
type instance PaiDom (CPActorValue adr pai vec str ctx exp) = SimplePair (CPActorValue adr pai vec str ctx exp)
type instance VecDom (CPActorValue adr pai vec str ctx exp) = PIVector (CPActorValue adr pai vec str ctx exp) (CPActorValue adr pai vec str ctx exp) 
type instance StrDom (CPActorValue adr pai vec str ctx exp) = SchemeString (CP String) (CPActorValue adr pai vec str ctx exp) 


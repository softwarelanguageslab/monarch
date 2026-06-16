{-# OPTIONS_GHC -Wno-orphans #-}
module Domain.Scheme.Actors.CP(CPActorValue, CPActorMapping, Pid(..)) where

import Domain.Scheme.Modular
import Data.TypeLevel.HMap ((::->))
import Lattice
import Domain.Scheme.Class hiding (Exp)
import Domain.Scheme.Store
import Domain.Actor
import Domain.Core
import Data.HashMap.Strict (HashMap)

type CPActorMapping str ctx exp =
    '[ RealConf ::-> CP Double,
       IntConf ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> HashMap String (VarAdr ctx),
       ExpConf ::-> exp,
       VaAdrConf ::-> VarAdr ctx,
       PaAdrConf ::-> PaiAdr exp ctx,
       VeAdrConf ::-> VecAdr exp ctx,
       StAdrConf ::-> StrAdr exp ctx,
       PidConf ::-> Pid exp ctx,
       StrConf ::-> str
     ]

-- | Type of values in the analysis
type CPActorValue str ctx exp =
  SchemeVal (CPActorMapping str ctx exp)


type instance VarDom (CPActorValue str  ctx exp) = CPActorValue str ctx exp
type instance PaiDom (CPActorValue str  ctx exp) = SimplePair (CPActorValue str  ctx exp)
type instance VecDom (CPActorValue str  ctx exp) = PIVector (CPActorValue str  ctx exp) 
                                                               (CPActorValue str  ctx exp)
                                                               (CPActorValue str  ctx exp) 
                                                               str
                                                               (CPActorValue str  ctx exp)  
type instance StrDom (CPActorValue str  ctx exp) =  str


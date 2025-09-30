module Domain.Scheme.Actors.CP(CPActorValue, CPActorMapping, Pid(..)) where

import Domain.Scheme.Modular
import Data.TypeLevel.HMap ((::->))
import Data.Map (Map)
import Lattice
import Domain.Scheme.Class hiding (Exp)
import Domain.Actor
import Domain.Core
import Data.HashMap.Strict (HashMap)

type CPActorMapping str adr ctx exp =
    '[ RealConf ::-> CP Double,
       IntConf ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> HashMap String (adr ctx),
       ExpConf ::-> exp,
       AdrConf ::-> adr ctx,
       PidConf ::-> Pid exp ctx,
       StrConf ::-> str
     ]

-- | Type of values in the analysis
type CPActorValue str adr ctx exp =
  SchemeVal (CPActorMapping str adr ctx exp)


type instance VarDom (CPActorValue str adr ctx exp) = CPActorValue str adr  ctx exp
type instance PaiDom (CPActorValue str adr ctx exp) = SimplePair (CPActorValue str adr ctx exp)
type instance VecDom (CPActorValue str adr ctx exp) = PIVector (CPActorValue str adr ctx exp) 
                                                               (CPActorValue str adr ctx exp)
                                                               (CPActorValue str adr ctx exp) 
                                                               str
                                                               (CPActorValue str adr ctx exp)  
type instance StrDom (CPActorValue str adr ctx exp) =  str


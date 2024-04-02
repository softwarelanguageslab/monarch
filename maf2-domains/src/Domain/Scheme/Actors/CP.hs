module Domain.Scheme.Actors.CP(CPActorValue, CPActorMapping, Pid(..)) where

import Syntax.Scheme
import Domain.Scheme.Modular
import Data.TypeLevel.HMap ((::->))
import Data.Map (Map)
import Lattice
import Domain.Scheme.Class hiding (Exp)
import Domain.Core

type CPActorMapping adr pai vec str ctx = 
    '[ RealConf ::-> CP Double,
       IntConf ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> Map String adr,
       ExpConf ::-> Exp,
       StrConf ::-> str,
       PaiConf ::-> pai,
       VecConf ::-> vec,
       VarConf ::-> adr,
       PidConf ::-> Pid ctx
     ]

-- | Type of values in the analysis
type CPActorValue adr pai vec str ctx =
  SchemeVal (CPActorMapping adr pai vec str ctx)


data Pid ctx
  = Pid Exp ctx
  | EntryPid
  deriving (Ord, Eq, Show)

type instance VarDom (CPActorValue adr pai vec str ctx) = CPActorValue adr pai vec str ctx
type instance PaiDom (CPActorValue adr pai vec str ctx) = SimplePair (CPActorValue adr pai vec str ctx)
type instance VecDom (CPActorValue adr pai vec str ctx) = PIVector (CPActorValue adr pai vec str ctx) (CPActorValue adr pai vec str ctx)
type instance StrDom (CPActorValue adr pai vec str ctx) = SchemeString (CP String) (CPActorValue adr pai vec str ctx)

instance (Ord ctx, Show ctx) => Address (Pid ctx)

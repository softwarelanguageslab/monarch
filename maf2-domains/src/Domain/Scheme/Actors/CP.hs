module Domain.Scheme.Actors.CP(CPActorValue, Pid(..)) where

import Syntax.Scheme
import Domain.Scheme.Modular
import Data.TypeLevel.HMap ((::->))
import Data.Map (Map)
import Lattice
import Domain.Scheme.Class hiding (Exp)
import Domain.Core

-- | Type of values in the analysis
type CPActorValue adr ptr ctx =
  SchemeVal
    '[ RealConf ::-> CP Double,
       IntConf ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> Map String adr,
       ExpConf ::-> Exp,
       StrConf ::-> ptr,
       PaiConf ::-> ptr,
       VecConf ::-> ptr,
       VarConf ::-> adr,
       PidConf ::-> Pid ctx
     ]


data Pid ctx
  = Pid Exp ctx
  | EntryPid
  deriving (Ord, Eq, Show)

type instance VarDom (CPActorValue adr ptr ctx) = CPActorValue adr ptr ctx
type instance PaiDom (CPActorValue adr ptr ctx) = SimplePair (CPActorValue adr ptr ctx)
type instance VecDom (CPActorValue adr ptr ctx) = PIVector (CPActorValue adr ptr ctx) (CPActorValue adr ptr ctx)
type instance StrDom (CPActorValue adr ptr ctx) = SchemeString (CP String) (CPActorValue adr ptr ctx)

instance (Ord ctx, Show ctx) => Address (Pid ctx)

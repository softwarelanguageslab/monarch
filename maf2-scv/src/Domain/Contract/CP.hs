module Domain.Contract.CP where

import Domain.Scheme.Modular
import Domain.Scheme.Store
import Domain.Contract.Store
import qualified Domain.Scheme.Actors.CP as CP
import Lattice.ConstantPropagationLattice
import Data.TypeLevel.HMap ((::->))
import Syntax.Scheme
import Domain.Contract.Behavior (UnorderedBehaviorContract)

import Domain.Scheme.Class hiding (Exp, Env)
import Domain.Core (SimplePair, PIVector)
import Prelude hiding (length)

import Data.Map (Map)

type M k = '[
       RealConf ::-> CP Double,
       IntConf  ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf  ::-> Env k,
       ExpConf  ::-> Exp,
       StrConf  ::-> StrAdr k,
       PaiConf  ::-> PaiAdr k,
       VecConf  ::-> VecAdr k,
       VarConf  ::-> EnvAdr k,
       PidConf  ::-> CP.Pid Exp k,
       BeCConf  ::-> UnorderedBehaviorContract (MsCAdr k),
       MoαConf  ::-> MoαAdr k,
       FlaConf  ::-> FlaAdr k,
       PMeConf  ::-> MsCAdr k]

type CPContractValue k = SchemeVal (M k)

type instance VarDom (CPContractValue k) = CPContractValue k
type instance VecDom (CPContractValue k) = PIVector (CPContractValue k) (CPContractValue k)
type instance PaiDom (CPContractValue k) = SimplePair (CPContractValue k)
type instance StrDom (CPContractValue k) = SchemeString (CP String) (CPContractValue k)


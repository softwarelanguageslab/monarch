module Domain.Contract.CP where  

import Domain.Scheme.Modular
import Domain.Scheme.Store
import Domain.Contract.Store
import qualified Domain.Scheme.Actors.CP as CP
import Lattice.ConstantPropagationLattice
import Data.TypeLevel.HMap ((::->))
import Syntax.Scheme
import Analysis.Contracts.Behavior (UnorderedBehaviorContract)

import Domain.Symbolic (PairedSymbolic)
import Domain.Scheme.Class hiding (Exp, Env)
import Domain.Core (SimplePair, PIVector, StringDomain(..))
import Prelude hiding (length)
import Domain.Scheme.Derived.Pair (mkLeft, leftValue)

import Control.Monad
import Data.Map (Map)

type Env k = Map String (EnvAdr k)

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
       PidConf  ::-> CP.Pid k,
       BeCConf  ::-> UnorderedBehaviorContract MsCAdr,
       MoαConf  ::-> MoαAdr,
       FlaConf  ::-> FlaAdr,
       PMeConf  ::-> MsCAdr]

type CPContractValue k = SchemeVal (M k)

type instance VarDom (CPContractValue k) = CPContractValue k
type instance VecDom (CPContractValue k) = PIVector (CPContractValue k) (CPContractValue k)
type instance PaiDom (CPContractValue k) = SimplePair (CPContractValue k)
type instance StrDom (CPContractValue k) = SchemeString (CP String) (CPContractValue k)


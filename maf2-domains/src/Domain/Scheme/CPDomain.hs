module Domain.Scheme.CPDomain(CPValue, test) where

import Lattice 
import Domain.Core 
import Domain.Scheme.Class
import Domain.Scheme.Modular 
import qualified Data.TypeLevel.HMap as HMap
import Domain.Class (inject)

import Data.Map

type CPValue pai vec str var exp = ModularSchemeValue
                                  (CP Double)
                                  (CP Integer)
                                  (CP Char)
                                  (CP Bool)
                                  pai 
                                  vec 
                                  str
                                  var
                                  exp
                                  (Map String var)

type instance VarDom (CPValue pai vec str var exp) = CPValue pai vec str var exp
type instance PaiDom (CPValue pai vec str var exp) = SimplePair (CPValue pai vec str var exp)
type instance VecDom (CPValue pai vec str var exp) = PIVector (CPValue pai vec str var exp) (CPValue pai vec str var exp)
type instance StrDom (CPValue pai vec str var exp) = SchemeString (CP String) (CPValue pai vec str var exp)

test :: CPValue () () () () ()
test = SchemeVal $ HMap.singleton @IntKey (inject (4 :: Integer))

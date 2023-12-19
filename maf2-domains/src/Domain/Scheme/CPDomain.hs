module Domain.Scheme.CPDomain(CPValue) where

import Lattice 
import Domain.Core 
import Domain.Scheme.Class
import Domain.Scheme.Modular 

import Data.Map

type CPValue ptr var exp = ModularSchemeValue
                                  (CP Double)
                                  (CP Integer)
                                  (CP Char)
                                  (CP Bool)
                                  ptr 
                                  ptr 
                                  ptr
                                  var
                                  exp
                                  (Map String var)

type instance VarDom (CPValue ptr var exp) = CPValue ptr var exp
type instance PaiDom (CPValue ptr var exp) = SimplePair (CPValue ptr var exp)
type instance VecDom (CPValue ptr var exp) = PIVector (CPValue ptr var exp) (CPValue ptr var exp)
type instance StrDom (CPValue ptr var exp) = SchemeString (CP String) (CPValue ptr var exp)

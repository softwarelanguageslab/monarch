module Domain.Scheme.CPDomain(CPValue) where

import Lattice 
import Domain.Core 
import Domain.Scheme.Class
import Domain.Scheme.Modular 
import qualified Data.TypeLevel.HMap as HMap
import Domain.Class (inject)

import Data.Map

type CPValue adr exp = ModularSchemeValue
                                  (CP Double)
                                  (CP Integer)
                                  (CP Char)
                                  (CP Bool)
                                  adr 
                                  exp
                                  (Map String adr)

type instance VarDom (CPValue adr exp) = CPValue adr exp
type instance PaiDom (CPValue adr exp) = SimplePair (CPValue adr exp)
type instance VecDom (CPValue adr exp) = PIVector (CPValue adr exp)  -- zo mooi! 
                                                  (CPValue adr exp) 
                                                  (CPValue adr exp) 
                                                  (SchemeString (CP String))
                                                  (CPValue adr exp)
type instance StrDom (CPValue adr exp) = SchemeString (CP String) 

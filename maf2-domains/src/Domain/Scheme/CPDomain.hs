module Domain.Scheme.CPDomain(CPValue) where

import Lattice 
import Domain.Core 
import Domain.Scheme.Class
import Domain.Scheme.Modular 
import Domain.Scheme.Store

import Data.Map

type CPValue exp ctx = ModularSchemeValue
                                  (CP Double)
                                  (CP Integer)
                                  (CP Char)
                                  (CP Bool)
                                  (VarAdr ctx) 
                                  (PaiAdr exp ctx) 
                                  (VecAdr exp ctx) 
                                  (StrAdr exp ctx)
                                  exp
                                  (Map String (VarAdr ctx))

type instance VarDom (CPValue exp ctx) = CPValue exp ctx
type instance PaiDom (CPValue exp ctx) = SimplePair (CPValue exp ctx)
type instance VecDom (CPValue exp ctx) = PIVector (CPValue exp ctx)  -- zo mooi! 
                                                  (CPValue exp ctx) 
                                                  (CPValue exp ctx) 
                                                  (SchemeString (CP String))
                                                  (CPValue exp ctx)
type instance StrDom (CPValue exp ctx) = SchemeString (CP String) 

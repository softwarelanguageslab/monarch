-- | Symbolic domain combined with a constant
-- propagation domain
module Domain.Symbolic.CPDomain(CPSymbolicValue) where

import Domain.Symbolic.Paired
import Domain.Scheme.CPDomain
import Domain
import Domain.Scheme
import Domain.ConstantPropagation


type CPSymbolicValue ptr var exp = 
   PairedSymbolic (CPValue ptr var exp) ptr var

type instance VarDom (CPSymbolicValue ptr var exp) = CPSymbolicValue ptr var exp
type instance PaiDom (CPSymbolicValue ptr var exp) = SimplePair (CPSymbolicValue ptr var exp)
type instance VecDom (CPSymbolicValue ptr var exp) = PIVector (CPSymbolicValue ptr var exp) (CPSymbolicValue ptr var exp)
type instance StrDom (CPSymbolicValue ptr var exp) = SchemeString (CP String) (CPValue ptr var exp)


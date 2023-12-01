-- | Symbolic version of the Scheme domain
module Domain.Symbolic where

import Symbolic.AST
import Domain
import Domain.Scheme.Class

--------------------------------------------------
-- Declaration
--------------------------------------------------

newtype SymbolicValue sptr vptr pptr = SymbolicValue Proposition

--------------------------------------------------
-- Lattice instances
--------------------------------------------------

instance Joinable (SymbolicValue sptr vptr pptr) where
   join (SymbolicValue Bottom) (SymbolicValue p2) = SymbolicValue p2
   join (SymbolicValue p1) (SymbolicValue Bottom) = SymbolicValue p1
   join (SymbolicValue p1) (SymbolicValue p2) = SymbolicValue (Choice p1 p2)

instance JoinLattice (SymbolicValue sptr vptr pptr) where
   bottom = SymbolicValue Bottom
   subsumes _ (SymbolicValue Bottom) = True
   subsumes (SymbolicValue p1) (SymbolicValue p2) = p1 == p2

------------------------------------------------------------
-- NumberDomain instance
------------------------------------------------------------

instance NumberDomain (SymbolicValue sptr vptr pptr) where
   type Boo (SymbolicValue sptr vptr pptr) = (SymbolicValue sptr vptr pptr)
   isZero (SymbolicValue n) = return $ SymbolicValue $ Predicate "zero?/v" [n]
   random _ = return $ SymbolicValue Fresh
   plus (SymbolicValue n1) (SymbolicValue n2) =
      return $ SymbolicValue $ Predicate "+/v" [n1, n2]
   minus (SymbolicValue n1) (SymbolicValue n2) = 
      return $ SymbolicValue $ Predicate "-/v" [n1, n2]
   times (SymbolicValue n1) (SymbolicValue n2) = 
      return $ SymbolicValue $ Predicate "*/v" [n1, n2]
   div (SymbolicValue n1) (SymbolicValue n2) = 
      return $ SymbolicValue $ Predicate "//v" [n1, n2]
   expt = error "unsupported"
   lt (SymbolicValue n1) (SymbolicValue n2) = 
      return $ SymbolicValue $ Predicate "</v" [n1, n2]
   equals (SymbolicValue n1) (SymbolicValue n2) = 
      return $ SymbolicValue $ Predicate "=/v" [n1, n2]

------------------------------------------------------------
-- IntDomain instance
------------------------------------------------------------

instance Domain (SymbolicValue sptr vptr pptr) Integer where
   inject = SymbolicValue . Literal . Num

instance IntDomain (SymbolicValue sptr vptr pptr) where
   -- TODO: Str SymbolicValue is problematic here since it needs to refer 
   -- to something that actually implements the string domain, perhaps
   --  it is best to move toString into the string domain? Although
   --  this creates an unnecesary dependency from the string domain
   --  to the numeric domains.
   type Rea (SymbolicValue sptr vptr pptr) = SymbolicValue sptr vptr pptr
   toReal (SymbolicValue n1) = return $ SymbolicValue $ Predicate "as-real/v" [n1]
   toString = undefined
   quotient (SymbolicValue n1) (SymbolicValue n2) =
      return $ SymbolicValue $ Predicate "quotient/v" [n1, n2]
   modulo (SymbolicValue n1) (SymbolicValue n2) = 
      return $ SymbolicValue $ Predicate "modulo/v" [n1, n2]
   remainder (SymbolicValue n1) (SymbolicValue n2) = 
      return $ SymbolicValue $ Predicate "remainder/v" [n1, n2]


------------------------------------------------------------
-- RealDomain instance
------------------------------------------------------------

instance Domain (SymbolicValue sptr vptr pptr) Double where  
   inject n = SymbolicValue $ Literal (Rea n)

instance RealDomain (SymbolicValue sptr vptr pptr) where   
   type IntR (SymbolicValue sptr vptr pptr) = SymbolicValue sptr vptr pptr
   toInt (SymbolicValue n1)   = return $ SymbolicValue $ Predicate "as-int/v"   [n1]
   ceiling (SymbolicValue n1) = return $ SymbolicValue $ Predicate "ceiling/v"  [n1]
   floor (SymbolicValue n1)   = return $ SymbolicValue $ Predicate "floor/v"    [n1]
   round (SymbolicValue n1)   = return $ SymbolicValue $ Predicate "round/V"    [n1]
   log (SymbolicValue n1)     = return $ SymbolicValue $ Predicate "log/v"      [n1]
   sin (SymbolicValue n1)     = return $ SymbolicValue $ Predicate "sin/v"      [n1]
   asin (SymbolicValue n1)    = return $ SymbolicValue $ Predicate "asin/v"     [n1]
   cos (SymbolicValue n1)     = return $ SymbolicValue $ Predicate "cos/v"      [n1]
   acos (SymbolicValue n1)    = return $ SymbolicValue $ Predicate "acos/v"     [n1]
   tan (SymbolicValue n1)     = return $ SymbolicValue $ Predicate "tan/v"      [n1]
   atan (SymbolicValue n1)    = return $ SymbolicValue $ Predicate "atan/v"     [n1]
   sqrt (SymbolicValue n1)    = return $ SymbolicValue $ Predicate "sqrt/v"     [n1]

------------------------------------------------------------
-- BoolDomain instance
------------------------------------------------------------

instance Domain (SymbolicValue sptr vptr pptr) Bool where
   inject n = SymbolicValue $ Literal (Boo n)

instance BoolDomain (SymbolicValue sptr vptr pptr) where
   isTrue = const False -- we unknown status of whether it is fale or true, so neither is
   isFalse = const False
   not (SymbolicValue v) = SymbolicValue $ Predicate "not/v" [v]
   boolTop = SymbolicValue Fresh


------------------------------------------------------------
-- CharDomain instance
------------------------------------------------------------

instance Domain (SymbolicValue sptr vptr pptr) Char where  
   inject c = SymbolicValue $ Literal (Cha c)

instance CharDomain (SymbolicValue sptr vptr pptr) where
   type IntC (SymbolicValue sptr vptr pptr) = SymbolicValue sptr vptr pptr
   downcase  (SymbolicValue c) = return $ SymbolicValue $ Predicate "downcase/v" [c]
   upcase    (SymbolicValue c) = return $ SymbolicValue $ Predicate "upcase/v"   [c]
   charToInt (SymbolicValue c) = return $ SymbolicValue $ Predicate "as-int/v"   [c]
   isLower   (SymbolicValue _) = return bottom -- TODO: this yields the most precise result when combined with another lattice
                                               -- but is this really sound?
   isUpper   (SymbolicValue _) = return bottom
   charEq _ _ = return bottom
   charLt _ _ = return bottom
   charEqCI _ _ = return bottom
   charLtCI _ _ = return bottom


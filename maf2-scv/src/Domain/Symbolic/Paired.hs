{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PolyKinds #-}
-- | Symbolic version of the Scheme domain
module Domain.Symbolic.Paired where

import Lattice (EqualLattice(..))
import Domain
import Control.Monad.Join
import Data.Map (Map)
import Symbolic.AST
import Syntax.Span
import Domain.Symbolic.Class
import Domain.Contract.Behavior
import Domain.Contract (ContractDomain(..))
import Domain.Contract.Communication
import Lattice.Class
import Data.Kind

--------------------------------------------------
-- Declaration
--------------------------------------------------

newtype SymbolicVal (exp :: Type) (ptr :: k1) (sptr :: k2) (vptr :: k3) (pptr :: k4) = SymbolicVal { proposition :: Proposition } deriving (Eq, Ord, Show)

--------------------------------------------------
-- Lattice instances
--------------------------------------------------

instance Joinable (SymbolicVal exp ptr sptr vptr pptr) where
   join (SymbolicVal Bottom) (SymbolicVal p2) = SymbolicVal p2
   join (SymbolicVal p1) (SymbolicVal Bottom) = SymbolicVal p1
   join (SymbolicVal p1) (SymbolicVal p2) = SymbolicVal Fresh -- TODO: maybe "Choice"? 

instance BottomLattice (SymbolicVal exp ptr sptr vptr pptr) where
   bottom = SymbolicVal Bottom

instance PartialOrder (SymbolicVal exp ptr sptr vptr pptr) where
   subsumes _ (SymbolicVal Bottom) = True
   subsumes (SymbolicVal p1) (SymbolicVal p2) = p1 == p2

instance Meetable (SymbolicVal exp ptr sptr vptr pptr) where 
   meet = error "TODO: meet is not implemented"

------------------------------------------------------------
-- NumberDomain instance
------------------------------------------------------------

instance NumberDomain (SymbolicVal exp ptr sptr vptr pptr) where
   type Boo (SymbolicVal exp ptr sptr vptr pptr) = (SymbolicVal exp ptr sptr vptr pptr)
   isZero (SymbolicVal n) = return $ SymbolicVal $ Predicate "zero?/v" [n]
   random _ = return $ SymbolicVal Fresh
   plus (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "+/v" [n1, n2]
   minus (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "-/v" [n1, n2]
   times (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "*/v" [n1, n2]
   div (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "//v" [n1, n2]
   expt = error "unsupported"
   lt (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "</v" [n1, n2]
   eq (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "=/v" [n1, n2]

------------------------------------------------------------
-- IntDomain instance
------------------------------------------------------------

instance Domain (SymbolicVal exp ptr sptr vptr pptr) Integer where
   inject = SymbolicVal . Literal . Num

instance IntDomain (SymbolicVal exp ptr sptr vptr pptr) where
   type Str (SymbolicVal exp ptr sptr vptr pptr) = ()
   -- TODO: Str SymbolicVal is problematic here since it needs to refer 
   -- to something that actually implements the string domain, perhaps
   --  it is best to move toString into the string domain? Although
   --  this creates an unnecesary dependency from the string domain
   --  to the numeric domains.
   type Rea (SymbolicVal exp ptr sptr vptr pptr) = SymbolicVal exp ptr sptr vptr pptr
   toReal (SymbolicVal n1) = return $ SymbolicVal $ Predicate "as-real/v" [n1]
   toString = undefined
   quotient (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "quotient/v" [n1, n2]
   modulo (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "modulo/v" [n1, n2]
   remainder (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "remainder/v" [n1, n2]


------------------------------------------------------------
-- RealDomain instance
------------------------------------------------------------

instance Domain (SymbolicVal exp ptr sptr vptr pptr) Double where
   inject n = SymbolicVal $ Literal (Rea n)

instance RealDomain (SymbolicVal exp ptr sptr vptr pptr) where
   type IntR (SymbolicVal exp ptr sptr vptr pptr) = SymbolicVal exp ptr sptr vptr pptr
   toInt (SymbolicVal n1)   = return $ SymbolicVal $ Predicate "as-int/v"   [n1]
   ceiling (SymbolicVal n1) = return $ SymbolicVal $ Predicate "ceiling/v"  [n1]
   floor (SymbolicVal n1)   = return $ SymbolicVal $ Predicate "floor/v"    [n1]
   round (SymbolicVal n1)   = return $ SymbolicVal $ Predicate "round/V"    [n1]
   log (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "log/v"      [n1]
   sin (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "sin/v"      [n1]
   asin (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "asin/v"     [n1]
   cos (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "cos/v"      [n1]
   acos (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "acos/v"     [n1]
   tan (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "tan/v"      [n1]
   atan (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "atan/v"     [n1]
   sqrt (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "sqrt/v"     [n1]

------------------------------------------------------------
-- BoolDomain instance
------------------------------------------------------------

instance Domain (SymbolicVal exp ptr sptr vptr pptr) Bool where
   inject n = SymbolicVal $ Literal (Boo n)

instance BoolDomain (SymbolicVal exp ptr sptr vptr pptr) where
   isTrue  = const False -- unknown status of whether it is fale or true, so neither is
   isFalse = const False
   not (SymbolicVal v) = SymbolicVal $ Predicate "not/v" [v]
   boolTop = SymbolicVal Fresh


------------------------------------------------------------
-- CharDomain instance
------------------------------------------------------------

instance Domain (SymbolicVal exp ptr sptr vptr pptr) Char where
   inject c = SymbolicVal $ Literal (Cha c)

instance CharDomain (SymbolicVal exp ptr sptr vptr pptr) where
   type IntC (SymbolicVal exp ptr sptr vptr pptr) = SymbolicVal exp ptr sptr vptr pptr
   downcase  (SymbolicVal c) = return $ SymbolicVal $ Predicate "downcase/v" [c]
   upcase    (SymbolicVal c) = return $ SymbolicVal $ Predicate "upcase/v"   [c]
   charToInt (SymbolicVal c) = return $ SymbolicVal $ Predicate "as-int/v"   [c]
   isLower   (SymbolicVal _) = return bottom
   isUpper   (SymbolicVal _) = return bottom
   charEq _ _                = return bottom
   charLt _ _                = return bottom
   charEqCI _ _              = return bottom
   charLtCI _ _              = return bottom


------------------------------------------------------------
-- SchemeDomain instance
------------------------------------------------------------

instance (Address ptr,
          Address sptr,
          Address vptr,
          Address pptr) => SchemeDomain (SymbolicVal exp ptr sptr vptr pptr) where
   type Adr (SymbolicVal  exp ptr sptr vptr pptr)  = ptr
   type PAdr (SymbolicVal exp ptr sptr vptr pptr) = pptr
   type SAdr (SymbolicVal exp ptr sptr vptr pptr) = sptr
   type VAdr (SymbolicVal exp ptr sptr vptr pptr) = vptr

   type Exp (SymbolicVal exp ptr sptr vptr pptr)  = exp
   type Env (SymbolicVal exp ptr sptr vptr pptr)  = Map String ptr

   pptr      = const bottom
   vptr      = const bottom
   sptr      = const bottom
   pptrs     = return . const bottom
   vptrs     = return . const bottom
   sptrs     = return . const bottom
   injectClo = const bottom
   clos      = const bottom
   nil       = SymbolicVal $ Literal Nil
   unsp      = SymbolicVal $ Literal Unsp
   prim      = SymbolicVal . Variable . (++"/v")
   prims     = const bottom
   withProc  = const . const mzero
   isInteger = const $ inject False
   isReal    = const $ inject False
   isChar    = const $ inject False
   isVecPtr  = const $ inject False
   isStrPtr  = const $ inject False
   isPaiPtr  = const $ inject False
   isClo     = const $ inject False
   isBool    = const $ inject False
   isNil     = const $ inject False
   isUnsp    = const $ inject False
   isPrim    = const $ inject False
   symbols   = const bottom
   symbol    = SymbolicVal . Literal . Sym

------------------------------------------------------------
-- Actor domain
------------------------------------------------------------

-- | Constraints that have to be satisfied for 
class SymbolicARef a where 
   -- | Compute the symbolic identity of the given value
   identity :: a -> Proposition

instance (SpanOf exp) => SymbolicARef (Pid exp ctx) where
   identity EntryPid   = Literal $ Actor Nothing
   identity (Pid e _)  = Literal $ Actor (Just $ spanOf e)

-- | An instance of the actor domain is defined for symbolic
-- values is defined if the actor reference used in the underlying 
-- Scheme domain supports representing its identity as a proposition
instance (ActorDomain v, SymbolicARef (ARef v), SchemeValue (PairedSymbolic v exp pai vec str var)) => ActorDomain (PairedSymbolic v exp pai vec str var) where
   type ARef (PairedSymbolic v exp pai vec str var) = (ARef v)
   
   aref ref' = SchemePairedValue (aref ref', SymbolicVal $ identity ref')
   arefs f   = arefs f . leftValue 
   arefs'    = arefs'  . leftValue

   -- TODO: do we need to symbolically represent a behavior as well?
   beh beh'   = SchemePairedValue (beh beh', SymbolicVal $ Literal Beh)
   withBehs f = withBehs f . leftValue

   isActorRef v = 
      SchemePairedValue (isActorRef (leftValue v), SymbolicVal $ Predicate "actor?/v" [proposition $ rightValue v])


------------------------------------------------------------
-- Contract domain
------------------------------------------------------------

instance (BehaviorContract v, SchemeValue v) => BehaviorContract (PairedSymbolic v exp pai vec str var) where 
   type MAdr (PairedSymbolic v exp pai vec str var) = MAdr v

   behaviorContract contracts =
      SchemePairedValue (behaviorContract @_ contracts, bottom)

   isBehaviorContract = isBehaviorContract @_ . leftValue
   behaviorMessageContracts = behaviorMessageContracts . leftValue

instance (CommunicationContract v) => CommunicationContract (PairedSymbolic v exp pai vec str var) where 
   type MCAdr (PairedSymbolic v exp pai vec str var) = MCAdr v
   isCommunicationContract = 
      isCommunicationContract . leftValue
   ensuresContract adrs = SchemePairedValue (ensuresContract adrs, bottom)
   ensureMessageContracts = ensureMessageContracts . leftValue

instance (SchemeValue (PairedSymbolic v exp pai vec str var), SchemeValue v, ContractDomain v) => ContractDomain (PairedSymbolic v exp pai vec str var) where
   type FAdr (PairedSymbolic v exp pai vec str var) = FAdr v
   type OAdr (PairedSymbolic v exp pai vec str var) = OAdr v

   -- TODO: do we need to represent the message contract 
   -- symbolically? Probably not...
   messageContract adr = 
      SchemePairedValue (messageContract adr, bottom) 
   messageContracts    = messageContracts . leftValue
   isMessageContract   = isMessageContract . leftValue

   -- 
   isFlat  = isFlat . leftValue
   flats   = flats  . leftValue
   flat a  = 
      SchemePairedValue (flat a, bottom)

   --
   αmon v = SchemePairedValue (αmon v, SymbolicVal $ Literal Mon)
   αmons  = αmons . leftValue
   isαmon = isαmon . leftValue 

------------------------------------------------------------
-- Symbolic value
------------------------------------------------------------

instance (SchemeValue (PairedSymbolic v exp pai vec str var)) => SymbolicValue (PairedSymbolic v exp pai vec str var) where
   type Abstract (PairedSymbolic v exp pai vec str var) = v 
   type Symbolic (PairedSymbolic v exp pai vec str var) = SymbolicVal exp var str vec pai

   combine         = curry SchemePairedValue
   abstractValue   = leftValue
   symbolicValue   = rightValue

   ap f ags res =
      SchemePairedValue (leftValue res, SymbolicVal $ Application (proposition $ rightValue f) (map (proposition . rightValue) ags))
   assertTrue (SchemePairedValue (l, SymbolicVal r)) =
      SchemePairedValue (l, SymbolicVal $ IsTrue r)
   assertFalse (SchemePairedValue (l, SymbolicVal r)) =
      SchemePairedValue (l, SymbolicVal $ IsFalse r)
   symbolic (SchemePairedValue (_, SymbolicVal r)) = r
   var idx vlu =
      SchemePairedValue (leftValue vlu, SymbolicVal $ Variable (varName idx))
   unsymbolic (SchemePairedValue (v, _)) = 
      SchemePairedValue (v, SymbolicVal Fresh)

------------------------------------------------------------
-- Equality
------------------------------------------------------------

instance (EqualLattice v) => EqualLattice (PairedSymbolic v exp pai vec str var) where 
   -- TODO: we might want to introduce a symbolic constraint here,
   -- but we cannot do this currently since a generic 'b' is expected
   -- that satisfies BoolDomain
   eql a b = 
      eql (leftValue a) (leftValue b)


------------------------------------------------------------
-- Pairing with other Scheme value
------------------------------------------------------------

type PairedSymbolic v exp pai vec str var = SchemePairedValue v (SymbolicVal exp var str vec pai)

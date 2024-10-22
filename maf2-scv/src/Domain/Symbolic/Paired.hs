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
import Domain.Scheme.Store (EnvAdr, PaiAdrE, StrAdrE, VecAdrE)

--------------------------------------------------
-- Declaration
--------------------------------------------------

newtype SymbolicVal (exp :: Type) (k :: Type) (i :: Type) = SymbolicVal { proposition :: Proposition i  } 
                    deriving (Eq, Ord, Show)

--------------------------------------------------
-- Lattice instances
--------------------------------------------------

instance Joinable (SymbolicVal exp k i) where
   join (SymbolicVal Bottom) (SymbolicVal p2) = SymbolicVal p2
   join (SymbolicVal p1) (SymbolicVal Bottom) = SymbolicVal p1
   join (SymbolicVal p1) (SymbolicVal p2) = SymbolicVal Fresh -- TODO: maybe "Choice"? 

instance BottomLattice (SymbolicVal exp k n) where
   bottom = SymbolicVal Bottom

instance (Eq i) => PartialOrder (SymbolicVal exp k i) where
   subsumes _ (SymbolicVal Bottom) = True
   subsumes (SymbolicVal p1) (SymbolicVal p2) = p1 == p2

instance Meetable (SymbolicVal exp k i) where 
   meet = error "TODO: meet is not implemented"

------------------------------------------------------------
-- NumberDomain instance
------------------------------------------------------------

instance (Eq i) => NumberDomain (SymbolicVal exp k i) where
   type Boo (SymbolicVal exp k i) = (SymbolicVal exp k i)
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

instance Eq i => Domain (SymbolicVal exp k i) Integer where
   inject = SymbolicVal . Literal . Num

instance Eq i => IntDomain (SymbolicVal exp k i) where
   type Str (SymbolicVal exp k i) = ()
   -- TODO: Str SymbolicVal is problematic here since it needs to refer 
   -- to something that actually implements the string domain, perhaps
   --  it is best to move toString into the string domain? Although
   --  this creates an unnecesary dependency from the string domain
   --  to the numeric domains.
   type Rea (SymbolicVal exp k i) = SymbolicVal exp k i
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

instance Eq i => Domain (SymbolicVal exp k i) Double where
   inject n = SymbolicVal $ Literal (Rea n)

instance Eq i => RealDomain (SymbolicVal exp k i) where
   type IntR (SymbolicVal exp k i) = SymbolicVal exp k i
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

instance Eq i => Domain (SymbolicVal exp k i) Bool where
   inject n = SymbolicVal $ Literal (Boo n)

instance Eq i => BoolDomain (SymbolicVal exp k i) where
   isTrue  = const False -- unknown status of whether it is fale or true, so neither is
   isFalse = const False
   not (SymbolicVal v) = SymbolicVal $ Predicate "not/v" [v]
   boolTop = SymbolicVal Fresh


------------------------------------------------------------
-- CharDomain instance
------------------------------------------------------------

instance Eq i => Domain (SymbolicVal exp k i) Char where
   inject c = SymbolicVal $ Literal (Cha c)

instance Eq i => CharDomain (SymbolicVal exp k i) where
   type IntC (SymbolicVal exp k i) = SymbolicVal exp k i
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

instance (Ord exp, Ord k, Show exp, Show k, Eq i) => SchemeDomain (SymbolicVal exp k i) where
   type Adr  (SymbolicVal exp k i) = EnvAdr k
   type PAdr (SymbolicVal exp k i) = PaiAdrE exp k
   type SAdr (SymbolicVal exp k i) = StrAdrE exp k
   type VAdr (SymbolicVal exp k i) = VecAdrE exp k

   type Exp (SymbolicVal exp k i)  = exp
   type Env (SymbolicVal exp k i)  = Map String (EnvAdr k)

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
   prim      = SymbolicVal . Function . (++"/v")
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
   identity :: a -> Proposition i

instance (SpanOf exp) => SymbolicARef (Pid exp ctx) where
   identity EntryPid   = Literal $ Actor Nothing
   identity (Pid e _)  = Literal $ Actor (Just $ spanOf e)

-- | An instance of the actor domain is defined for symbolic
-- values is defined if the actor reference used in the underlying 
-- Scheme domain supports representing its identity as a proposition
instance (ActorDomain v, SymbolicARef (ARef v), SchemeValue (PairedSymbolic v exp k i)) => ActorDomain (PairedSymbolic v exp k i) where
   type ARef (PairedSymbolic v exp k i) = (ARef v)
   
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

instance (BehaviorContract v, SchemeValue v) => BehaviorContract (PairedSymbolic v exp k i) where 
   type MAdr (PairedSymbolic v exp k i) = MAdr v

   behaviorContract contracts =
      SchemePairedValue (behaviorContract @_ contracts, bottom)

   isBehaviorContract = isBehaviorContract @_ . leftValue
   behaviorMessageContracts = behaviorMessageContracts . leftValue

instance (CommunicationContract v) => CommunicationContract (PairedSymbolic v exp k i) where 
   type MCAdr (PairedSymbolic v exp k i) = MCAdr v
   isCommunicationContract = 
      isCommunicationContract . leftValue
   ensuresContract adrs = SchemePairedValue (ensuresContract adrs, bottom)
   ensureMessageContracts = ensureMessageContracts . leftValue

instance (SchemeValue (PairedSymbolic v exp k i), SchemeValue v, ContractDomain v) => ContractDomain (PairedSymbolic v exp k i) where
   type FAdr (PairedSymbolic v exp k i) = FAdr v
   type OAdr (PairedSymbolic v exp k i) = OAdr v

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

instance (SchemeValue (PairedSymbolic v exp k i), Ord i) => SymbolicValue (PairedSymbolic v exp k i) i where
   type Abstract (PairedSymbolic v exp k i) = v 
   type Symbolic (PairedSymbolic v exp k i) = SymbolicVal exp k i

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
      SchemePairedValue (leftValue vlu, SymbolicVal $ Variable idx)
   unsymbolic (SchemePairedValue (v, _)) = 
      SchemePairedValue (v, SymbolicVal Fresh)

------------------------------------------------------------
-- Equality
------------------------------------------------------------

instance (EqualLattice v) => EqualLattice (PairedSymbolic v exp k i) where 
   -- TODO: we might want to introduce a symbolic constraint here,
   -- but we cannot do this currently since a generic 'b' is expected
   -- that satisfies BoolDomain
   eql a b = 
      eql (leftValue a) (leftValue b)


------------------------------------------------------------
-- Pairing with other Scheme value
------------------------------------------------------------

type PairedSymbolic v exp k i = SchemePairedValue v (SymbolicVal exp k i)

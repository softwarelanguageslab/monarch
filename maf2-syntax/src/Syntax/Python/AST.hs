-- | µPy AST. This AST is phase-indexed, meaning that different compilation phases 
-- can add or remove fields to the AST nodes in tree.
--
-- This module defines two compilation phases: simplification which is the result of transforming a regular Python parse 
-- tree into a µPy AST, and lexical addressing which makes all variable names unique and removes the need for `global` 
-- and `nonlocal` statements and introduces lexical addressing instead. See the corresponding modules for more information.
{-# LANGUAGE FlexibleContexts, UndecidableInstances, ConstraintKinds, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE TypeOperators #-}
{-# OPTIONS_GHC -Wno-partial-fields #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Syntax.Python.AST(
   -- ast nodes
   Parameter(..), 
   Ident(..), 
   Lit(..), 
   LOp(..),
   Program(..), 
   Lhs(..), 
   Ide(..), 
   Stmt(..), 
   Exp(..), 
   ideName, 
   prettyString, 
   IdeLex(..), 
   Par(..),
   -- phases
   AfterSimplification,
   AfterLexicalAddressing,
   Micro,
   makeSeq,
) where

import Data.Void
import Data.Kind
import GHC.Generics
import Language.Python.Common.AST hiding (None, List, Try, Raise, Handler, Conditional, Pass, Continue, Break, Return, Call, Var, Bool, Tuple, Global, NonLocal)
import Control.Monad.Reader
import Control.Monad.Writer
import Data.List (intersperse)
import Control.DeepSeq (NFData)

-------------------------------------------------------------------------------
-- Compilation phases
-------------------------------------------------------------------------------

-- | Syntax tree after simplification phase.
--
-- The simplification phase starts from a Language.Python.Common.AST parse tree and 
-- transformes it into an equivalent simplified µPy AST.
--
-- The transformation proceeds as follows:
-- * All class definitions are removed and replaced by assignments of the class name to an expression that evaluates to an instance of `type`
-- * All function definitions are removed and replaced by assignments of the function name to a lambda expression
-- * All binary arithmetic operations are replaced by their 'magic' method counterpart, for example "a + b" is translated to "a.__plus__(b)"
-- * The variables inside the body of a class are translated to assignments of the corresponding field inside the class
-- * For loops are translated to guarded while loops
-- * For each variable occuring on the right hand side in the body of a function keeps track of their name in the 
-- `Lam` expression
data AfterSimplification

type instance XAsgn AfterSimplification      = ()     -- assigment is allowed
type instance XSeq AfterSimplification       = ()     -- sequencing is allowed
type instance XRet AfterSimplification       = ()     -- return is allowed
type instance XLoop AfterSimplification      = ()     -- loops are allowed
type instance XBreak AfterSimplification     = ()     -- breaks are allowed
type instance XCond AfterSimplification      = ()     -- conditionals are allowed
type instance XContinue AfterSimplification  = () -- continue is allowed
type instance XStmtExp AfterSimplification   = ()
type instance XLam AfterSimplification a     = [Ide a]
type instance XNlcl AfterSimplification      = ()
type instance XGbl AfterSimplification       = ()
type instance XRaise AfterSimplification     = ()
type instance XTry AfterSimplification       = ()
type instance XDec AfterSimplification       = () 
type instance XIde AfterSimplification a     = Ide a

-- | Syntax tree after lexical adressing
--
-- Lexical addressing removes all `nonlocal` and `global` statements and introduces
-- proper lexical scoping in the Python program.
data AfterLexicalAddressing

type instance XAsgn AfterLexicalAddressing       = ()     -- assigment is allowed
type instance XSeq AfterLexicalAddressing        = ()     -- sequencing is allowed
type instance XRet AfterLexicalAddressing        = ()     -- return is allowed
type instance XLoop AfterLexicalAddressing       = ()     -- loops are allowed
type instance XBreak AfterLexicalAddressing      = ()     -- breaks are allowed
type instance XCond AfterLexicalAddressing       = ()     -- conditionals are allowed
type instance XContinue AfterLexicalAddressing   = ()     -- continue is allowed
type instance XStmtExp AfterLexicalAddressing    = ()
type instance XLam AfterLexicalAddressing a      = [String]
type instance XNlcl AfterLexicalAddressing       = Void   -- nonlocal is compiled away
type instance XGbl  AfterLexicalAddressing       = Void   -- global is compiled away
type instance XRaise AfterLexicalAddressing      = ()
type instance XTry AfterLexicalAddressing        = ()
type instance XDec AfterLexicalAddressing        = ()
type instance XIde  AfterLexicalAddressing a     = IdeLex a

-- | Alias for the final phase
type Micro = AfterLexicalAddressing

-------------------------------------------------------------------------------
-- AST
-------------------------------------------------------------------------------

-- | A program is a series of statements
newtype Program a ξ = Program { programStmt :: Stmt a ξ }
   deriving (Generic)

instance (Holds NFData ξ a) => NFData (Program a ξ) where

deriving instance (Holds Show ξ a) => Show (Program a ξ)
deriving instance (Holds Eq ξ a) => Eq (Program a ξ)
deriving instance (Holds Ord ξ a) => Ord (Program a ξ)

deriving instance Generic (Ident a)
instance (NFData a) => NFData (Ident a) where

-- | An identifier is backed by the Language.Python identifier
data Ide a = Ide { getIdeIdent :: Ident a } 
           | NamespacedIde { getIdent :: Ide a, namespace :: Ide a } 
   deriving (Eq, Ord, Show, Generic)

instance (NFData a) => NFData (Ide a) where

-- | An identifier that is augmented with lexical addressing information
data IdeLex a = IdeLex { lexIde :: Ide a, num :: Int } 
              | IdeGbl String 
   deriving (Eq, Show, Ord, Generic)

instance (NFData a) => NFData (IdeLex a) where

-- Phase information for each type of statement
type family XAsgn ξ
type family XSeq ξ
type family XRet ξ
type family XLoop ξ
type family XBreak ξ
type family XContinue ξ
type family XCond ξ
type family XStmtExp ξ
type family XLam ξ a
type family XNlcl ξ
type family XGbl ξ
type family XRaise ξ
type family XTry ξ
type family XDec ξ
type family XIde ξ a :: Type

-- Creates a constraint that says that the given constraint should hold on all types of phase information
type Holds (c :: Type -> Constraint) ξ a =
   (c (XAsgn ξ), c (XSeq ξ), c (XRet ξ), c (XLoop ξ), c (XBreak ξ),
    c (XContinue ξ), c (XCond ξ), c (XStmtExp ξ), c (XLam ξ a), c (XNlcl ξ), c (XGbl ξ),
    c (XRaise ξ), c (XTry ξ), c (XIde ξ a), c (XDec ξ), c a)

-- | A statement is an assignment, block, sequence and loop
-- it is indexed by a "phase" parameter called `ξ` and use 
-- type level functions (aka type families) on `ξ` to determine whether 
-- the type of statement is possible during the given phase `ξ`.
data Stmt a ξ = Assg (XAsgn ξ) (Lhs a ξ) (Exp a ξ)
              | Seq (XSeq ξ) [Stmt a ξ]                                       -- ^ a sequence is a list of statements  
              | Return (XRet ξ) (Maybe (Exp a ξ)) a                           -- ^ returns the value of the given expression
              | Loop (XLoop ξ) (Exp a ξ) (Stmt a ξ) a                         -- ^ a loop with a loop head and body
              | Break (XBreak ξ) a                                            -- ^ a loop break
              | Continue (XContinue ξ) a                                      -- ^ a loop continue
              | Raise (XRaise ξ) (Exp a ξ) a                                  -- ^ a raise expression
              | Try (XTry ξ) (Stmt a ξ) [(Exp a ξ, Stmt a ξ)] a               -- ^ a try/except statement                                                          
              | NonLocal (XNlcl ξ) (Ide a) a                                  -- ^ nonlocal
              | Global   (XGbl  ξ) (Ide a) a                                  -- ^ global
              | Conditional (XCond ξ) [(Exp a ξ, Stmt a ξ)] (Stmt a ξ) a      -- ^ if-elif-else
              | DecoratedStm (XDec ξ) String (Stmt a ξ) a 
              | StmtExp (XStmtExp ξ) (Exp a ξ) a
   deriving (Generic)

deriving instance (Holds Show ξ a) => Show (Stmt a ξ)
deriving instance (Holds Ord  ξ a) => Ord (Stmt a ξ)
deriving instance (Holds Eq   ξ a) => Eq (Stmt a ξ)

instance (Holds NFData ξ a) => NFData (Stmt a ξ) where

makeSeq :: (XSeq ξ ~ ()) => [Stmt a ξ] -> Stmt a ξ
makeSeq [stm] = stm
makeSeq lst = Seq () lst 

-- | A reduced set of expressions
data Exp a ξ = Lam [Par a ξ] (Stmt a ξ) a (XLam ξ a)           -- ^ a less restricted version of Python's lambda
             | Var (XIde ξ a)                                  -- ^ a variable 
             | Read (Exp a ξ) (Ide a) a                        -- ^ field access e.x
             | Call (Exp a ξ) [Exp a ξ] [(Ide a, Exp a ξ)] a   -- ^ function call
             | Literal (Lit a ξ)                               -- ^ a value literal
             | LogicOp (LOp a) [Exp a ξ] a                     -- ^ a logical operator (and, or, not)
   deriving (Generic)                               

deriving instance (Holds Show ξ a) => Show (Exp a ξ)
deriving instance (Holds Ord  ξ a) => Ord (Exp a ξ)
deriving instance (Holds Eq   ξ a) => Eq (Exp a ξ)

instance (Holds NFData ξ a) => NFData (Exp a ξ) where

-- | Function parameters
data Par a ξ = Prm { parIde :: XIde ξ a, parAnnot :: a }
             | VarArg { parIde :: XIde ξ a, parAnnot :: a }
             | VarKeyword { parIde :: XIde ξ a, parAnnot :: a }
   deriving (Generic)

deriving instance (Holds Show ξ a) => Show (Par a ξ)
deriving instance (Holds Ord  ξ a) => Ord (Par a ξ)
deriving instance (Holds Eq   ξ a) => Eq (Par a ξ)

instance (Holds NFData ξ a) => NFData (Par a ξ) where

-- | Arguments
--data Arg a ξ = PosArg (Exp a ξ) a         -- ^ Positional argument
--             | KeyArg (Ide a) (Exp a ξ) a -- ^ Keyword argument 

--deriving instance (Holds Show ξ a) => Show (Arg a ξ)
--deriving instance (Holds Ord  ξ a) => Ord (Arg a ξ)
--deriving instance (Holds Eq   ξ a) => Eq (Arg a ξ)


-- | The left-hand-side of an assignment
data Lhs a ξ = Field (Exp a ξ) (Ide a) a -- ^ assignment to a field
             | ListPat [Lhs a ξ] a 
             | TuplePat [Lhs a ξ] a 
             | IdePat (XIde ξ a)
   deriving (Generic)

deriving instance (Holds Show ξ a) => Show (Lhs a ξ)
deriving instance (Holds Ord  ξ a) => Ord (Lhs a ξ)
deriving instance (Holds Eq   ξ a) => Eq (Lhs a ξ)

instance (Holds NFData ξ a) => NFData (Lhs a ξ) where

-- | Value literals
data Lit a ξ = Bool Bool a 
             | Integer Integer a 
             | Real Double a 
             | String String a 
             | Tuple [Exp a ξ] a 
             | Dict [(Exp a ξ, Exp a ξ)] a
             | List [Exp a ξ] a
             | None a 
   deriving (Generic)

deriving instance (Holds Show ξ a) => Show (Lit a ξ)
deriving instance (Holds Ord  ξ a) => Ord (Lit a ξ)
deriving instance (Holds Eq   ξ a) => Eq (Lit a ξ)

instance (Holds NFData ξ a) => NFData (Lit a ξ) where

-- | Logical operators
data LOp a   = LAnd a 
             | LOr a 
             | LNot a
   deriving (Show, Ord, Eq, Generic)

instance (NFData a) => NFData (LOp a) where

-------------------------------------------------------------------------------
-- Auxilary functions
-------------------------------------------------------------------------------

ideName :: Ide a -> String
ideName (Ide (Ident nam _)) = nam
ideName (NamespacedIde i@(Ide _) _) = ideName i
ideName _i = error "invalid ide"

-------------------------------------------------------------------------------
-- Pretty printing
-------------------------------------------------------------------------------

class Monad m => PrettyPrintM m where
   newline :: m ()
   indented :: m a -> m a
   out :: String -> m ()

instance (Monad m, MonadReader Int m, MonadWriter [String] m) => PrettyPrintM m where
   indented m = local (+1) (newline >> m)
   out s = tell [s]
   newline = do
      out "\n"
      tabs <- ask
      out (concat $ replicate tabs "   ")

class Pretty e where
   pretty :: PrettyPrintM m => e -> m ()

prettyString :: Pretty e => e -> String
prettyString = concat . snd . runWriter . flip runReaderT 0 . pretty

instance Pretty (Stmt a AfterLexicalAddressing) where
   pretty (Assg _ lhs e) = pretty lhs >> out " = " >> pretty e
   pretty (Seq _ stmts)       = sequence_ (intersperse newline (map pretty stmts))
   pretty (Return _ (Just v) _) = out "return " >> pretty v
   pretty (Return _ Nothing  _) = out "return"
   pretty (Loop _ e stmt _)       = do
      out "loop ("
      pretty e
      out "): "
      indented (pretty stmt)
   pretty (Break _ _) = out "break"
   pretty (Continue _ _) = out "continue"
   pretty (NonLocal v _ _) = absurd v
   pretty (Global v _ _) = absurd v
   pretty (Conditional _ grds els _) = do
      sequence_ (intersperse newline $ map (\(grd, stmt) -> out "if " >> pretty grd >> out ":" >> indented (pretty stmt)) grds)
      newline
      out "else:"
      indented (pretty els)
   pretty (Raise _ expr _) = out "raise " >> pretty expr
   pretty (Try _ bdy hds _) = do
      out "try:"
      indented (pretty bdy)
      newline
      mapM_ (\(expr, body) -> out "except " >> pretty expr >> out ":" >> indented (pretty body)) hds
   pretty (StmtExp _ e _) = pretty e
   pretty (DecoratedStm _ ann stm _) = do
      out ("@" ++ ann)
      newline
      pretty stm

instance Pretty (Exp a AfterLexicalAddressing) where
   pretty (Lam prs stmt _ _)  = do
      out "λ ("
      sequence_ (intersperse (out ",") (map pretty prs))
      out "): "
      indented (pretty stmt)
   pretty (Var x) = pretty x
   pretty (Read e x _) =
      pretty e >> out "." >> pretty x
   pretty (Call e ags kwags _) = do
      pretty e
      out "("
      sequence_ $ intersperse (out ",") $ map pretty ags ++ map (\(k,r) -> pretty k >> out "=" >> pretty r) kwags
      out ")"

   pretty (Literal l) = pretty l
   pretty (LogicOp op prs _) = pretty op >> out " " >> sequence_ (intersperse (out ",") (map pretty prs))

instance Pretty (LOp a) where 
   pretty (LNot _) = out "not"
   pretty (LAnd _) = out "and"
   pretty (LOr _)  = out "or"
instance Pretty (Lit a AfterLexicalAddressing) where
   pretty (Bool b _) = out (show b)
   pretty (Integer i _) = out (show i)
   pretty (Real r _) = out (show r)
   pretty (String s _) = out (show s)
   pretty (Tuple exs _) = out "(" >> sequence_ (intersperse (out ",") (map pretty exs)) >> out ")"
   pretty (Dict bds _)  = out "{" >> sequence_ (intersperse (out ",") (map (\(k,v) -> pretty k >> out ":" >> pretty v) bds)) >> out "}"
   pretty (List exs _)  = out "[" >> sequence_ (intersperse (out ",") (map pretty exs)) >> out "]"
   pretty (None _)      = out "None"
instance Pretty (IdeLex a) where
   pretty (IdeLex ide at) = out (ideName ide) >> out "@" >> out (show at)
   pretty (IdeGbl nam) = out nam >> out "@" >> out "gbl"
instance Pretty (Ide a) where
   pretty = out . ideName

instance Pretty (Par a AfterLexicalAddressing) where
   pretty (Prm ide _) = pretty ide
   pretty (VarArg ide _) = out "*" >> pretty ide
   pretty (VarKeyword ide _) = out "**" >> pretty ide

instance Pretty (Lhs a AfterLexicalAddressing) where
   pretty (Field e x _) = pretty e >> out "." >> pretty x
   pretty (ListPat ps _) = out "[" >> sequence_ (intersperse (out ",") (map pretty ps)) >> out "]"
   pretty (TuplePat ps _) = out "(" >> sequence_ (intersperse (out ",") (map pretty ps)) >> out ")"
   pretty (IdePat x) = pretty x

instance (Pretty (Stmt a ξ)) => Pretty (Program a ξ) where
   pretty (Program stmt) = pretty stmt

{-# LANGUAGE LambdaCase #-}
module Syntax.CoreErlang.AST where

import Syntax.Span
import Syntax.Ide

-- | Auxilary function to created a span over multiple tokens/nodes
spanning :: (SpanOf a, SpanOf b) => a -> b -> Span
spanning a b = Span {
      filename = filename s1,
      startPosition = startPosition s1,
      endPosition = endPosition s2 }
   where s1 = spanOf a
         s2 = spanOf b

data Atom = Atom String Span
          deriving (Eq, Ord, Show)

instance SpanOf Atom where
   spanOf (Atom _ span) = span

-- | A function name with its arity
data Function = Function Atom Integer Span
              deriving (Eq, Ord, Show)

instance SpanOf Function where
   spanOf (Function _ _ span) = span

-- | A function with a name and body
data FunDef   = FunDef (Ann Function) (Ann Expr) Span
              deriving (Eq, Ord, Show)

instance SpanOf FunDef where
   spanOf (FunDef _ _ span) = span

-- | An attribute in Core Erlang
-- eg. -myattribute(data)
data Attribute = Attribute (Ann Atom) (Ann Lit) Span
               deriving (Eq, Ord, Show)

instance SpanOf Attribute where
   spanOf (Attribute _ _ span) = span

-- | A Core Erlang literal (constant)
data Lit = CharLit Char Span
         | IntegerLit Integer Span
         | FloatLit Float Span
         | AtomLit Atom Span
         | StringLit String Span
         | NilLit Span
         | TupleLit [Lit] Span
         | ConsLit  Lit Lit Span
         deriving (Ord, Eq, Show)

instance SpanOf Lit where
   spanOf = \case CharLit _ s -> s
                  IntegerLit _ s -> s
                  FloatLit _ s -> s
                  AtomLit _ s -> s
                  StringLit _ s -> s
                  NilLit s -> s
                  TupleLit _ s -> s
                  ConsLit _ _ s -> s

-- | An annotated Core Erlang node
data Ann a = Constr a
           | Ann a Annotation
           deriving (Eq, Ord, Show)

instance (SpanOf a) => SpanOf (Ann a) where
   spanOf (Constr a) = spanOf a
   spanOf (Ann a _) = spanOf a

-- | Annotations are arbitrary Core Erlang literals
-- without any semantics attached to them.
data Annotation = Annotation [Lit] Span
                   deriving (Ord, Eq, Show)

instance SpanOf Annotation where
   spanOf (Annotation _ span) = span

-- | A Core Erlang module
data Module = Module {
      moduleName :: Atom,
      moduleExports :: [Ann Function],
      moduleAttributes :: [Attribute],
      moduleDefinitions :: [FunDef],
      moduleSpan :: Span
   } deriving (Eq, Ord, Show)

instance SpanOf Module where
   spanOf = moduleSpan

-- | Pattern in Core Erlang (used in case clauses, let bindings, etc.)
data Pattern = VarPat !(Ann Ide) !Span
             | AtomicPat !Lit !Span
             | TuplePat ![Ann Pattern] !Span
             | ConsPat !(Ann Pattern) !(Ann Pattern) !Span  -- [H|T]
             | BinaryPat ![Ann BitstrPat] !Span             -- #{...}#
             | MapPat ![Ann MapPairPat] !(Maybe (Ann Expr)) !Span  -- ~{k:=v|Map}~
             | AliasPat !(Ann Ide) !(Ann Pattern) !Span     -- Var = Pattern
             deriving (Eq, Ord, Show)

instance SpanOf Pattern where
   spanOf = \case VarPat _ s -> s
                  AtomicPat _ s -> s
                  TuplePat _ s -> s
                  ConsPat _ _ s -> s
                  BinaryPat _ s -> s
                  MapPat _ _ s -> s
                  AliasPat _ _ s -> s

-- | Binary segment in a pattern
data BitstrPat = BitstrPat !(Ann Pattern) ![Ann Expr] !Span  -- #<pat>(size,unit,type,flags)
               deriving (Eq, Ord, Show)

instance SpanOf BitstrPat where
   spanOf (BitstrPat _ _ s) = s

-- | Map pair in a pattern (only exact matches allowed)
data MapPairPat = MapPairPat !(Ann Expr) !(Ann Pattern) !Span  -- key := value
                deriving (Eq, Ord, Show)

instance SpanOf MapPairPat where
   spanOf (MapPairPat _ _ s) = s

-- | Map pair in an expression
data MapPair = MapPairAssoc !(Ann Expr) !(Ann Expr) !Span  -- key => value
             | MapPairExact !(Ann Expr) !(Ann Expr) !Span  -- key := value
             deriving (Eq, Ord, Show)

instance SpanOf MapPair where
   spanOf = \case MapPairAssoc _ _ s -> s
                  MapPairExact _ _ s -> s

-- | Binary segment in an expression
data Bitstr = Bitstr !(Ann Expr) ![Ann Expr] !Span  -- #<expr>(size,unit,type,flags)
            deriving (Eq, Ord, Show)

instance SpanOf Bitstr where
   spanOf (Bitstr _ _ s) = s

-- | Case clause
data Clause = Clause ![Ann Pattern] !(Ann Expr) !(Ann Expr) !Span  -- <pats> when guard -> body
            deriving (Eq, Ord, Show)

instance SpanOf Clause where
   spanOf (Clause _ _ _ s) = s

-- | A Core Erlang expression
data Expr = FunExpr ![Ann Ide] !(Ann Expr) !Span              -- ^ fun(a, b) -> bdy
          | ValuesExpr ![Ann Expr] !Span                      -- ^ <e1, e2, e3>
          | TupleExpr  ![Ann Expr] !Span                      -- ^ {e1, e2, e3}
          | ConsExpr !(Ann Expr) !(Ann Expr) !Span            -- ^ [H|T]
          | LitExpr    !Lit        !Span                      -- ^ literal constant
          | VarExpr    !(Ann Ide)  !Span                      -- ^ variable reference
          | FunNameExpr !Function !Span                       -- ^ function name (atom/int)
          | LetExpr ![Ann Ide] !(Ann Expr) !(Ann Expr) !Span  -- ^ let <vars> = arg in body
          | LetRecExpr ![FunDef] !(Ann Expr) !Span            -- ^ letrec defs in body
          | CaseExpr !(Ann Expr) ![Ann Clause] !Span          -- ^ case arg of clauses end
          | ApplyExpr !(Ann Expr) ![Ann Expr] !Span           -- ^ apply fun(args)
          | CallExpr !(Ann Expr) !(Ann Expr) ![Ann Expr] !Span -- ^ call mod:name(args)
          | PrimOpExpr !(Ann Expr) ![Ann Expr] !Span          -- ^ primop name(args)
          | TryExpr !(Ann Expr) ![Ann Ide] !(Ann Expr) ![Ann Ide] !(Ann Expr) !Span -- ^ try arg of vars -> body catch evars -> handler
          | CatchExpr !(Ann Expr) !Span                       -- ^ catch body
          | ReceiveExpr ![Ann Clause] !(Ann Expr) !(Ann Expr) !Span -- ^ receive clauses after timeout -> action
          | SeqExpr !(Ann Expr) !(Ann Expr) !Span             -- ^ do arg body
          | MapExpr ![Ann MapPair] !(Maybe (Ann Expr)) !Span  -- ^ ~{pairs|base}~
          | BinaryExpr ![Ann Bitstr] !Span                    -- ^ #{segments}#
          deriving (Eq, Ord, Show)

instance SpanOf Expr where
   spanOf = \case FunExpr _ _ s -> s
                  ValuesExpr _ s -> s
                  TupleExpr _ s -> s
                  ConsExpr _ _ s -> s
                  LitExpr _ s -> s
                  VarExpr _ s -> s
                  FunNameExpr _ s -> s
                  LetExpr _ _ _ s -> s
                  LetRecExpr _ _ s -> s
                  CaseExpr _ _ s -> s
                  ApplyExpr _ _ s -> s
                  CallExpr _ _ _ s -> s
                  PrimOpExpr _ _ s -> s
                  TryExpr _ _ _ _ _ s -> s
                  CatchExpr _ s -> s
                  ReceiveExpr _ _ _ s -> s
                  SeqExpr _ _ s -> s
                  MapExpr _ _ s -> s
                  BinaryExpr _ s -> s

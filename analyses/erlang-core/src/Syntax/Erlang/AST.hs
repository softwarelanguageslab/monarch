{-# LANGUAGE LambdaCase #-}
module Syntax.Erlang.AST where

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

-- | A Core Erlang expression
data Expr = FunExpr ![Ann Ide] !(Ann Expr) !Span  -- ^ fun(a, b) -> bdy
          | ValuesExpr ![Ann Expr] !Span          -- ^ <e1, e2, e3>
          | TupleExpr  ![Ann Expr] !Span          -- ^ {e1, e2, e3}
          | LitExpr    !Lit        !Span
          deriving (Eq, Ord, Show)

instance SpanOf Expr where 
   spanOf = \case FunExpr _ _ s -> s 
                  ValuesExpr _ s -> s
                  TupleExpr _ s -> s 
                  LitExpr _ s -> s

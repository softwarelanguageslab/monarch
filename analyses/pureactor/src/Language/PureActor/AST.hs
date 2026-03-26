module Language.PureActor.AST
  ( Expr (..),
    Literal (..),
    Tag (..),
    Handlers(..)
  )
where

import Syntax.Ide (Ide)
import Syntax.Span (Span, SpanOf (..))

-- | Expressions in the PureActor language, only contains
-- the types of expressions needed for a pure Actor calculus (i.e., nothing from lambda calculus)
-- We deviate slightly from this convention for the 'Letrec' form so that programs
-- are not as tedious to write.
data Expr
  = Spawn Expr Span
  | Send Expr Tag Expr Span
  | Letrec [(Ide, Expr)] Expr Span
  | Var Ide
  | Lit Literal Span
  | Behavior Ide Handlers Span
  | Become Expr Span
  | Begin [Expr] Span
  deriving (Ord, Eq, Show)

-- | Literal expressions
data Literal = IntLit Int
             | BoolLit Bool
  deriving (Ord, Eq, Show)

-- | Tags are simply wrapped strings, used in messages and message handlers
newtype Tag = Tag String
  deriving (Ord, Eq, Show)

-- | Handlers map a message tag to their handler
newtype Handlers = Handlers (Map Tag (Ide, Expr))
  deriving (Ord, Eq, Show)

instance SpanOf Expr where
  spanOf =
    \case
      Spawn _ s -> s
      Become _ s -> s
      Send _ _ _ s -> s
      Letrec _ _ s -> s
      Var ide -> spanOf ide
      Lit _ s -> s
      Begin _ s -> s
      Behavior _ _ s -> s


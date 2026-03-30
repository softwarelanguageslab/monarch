{-# LANGUAGE OverloadedStrings #-}
module Language.PureActor.AST
  ( Expr (..),
    Literal (..),
    Tag (..),
    Handlers(..)
  )
where

import Syntax.Ide (Ide, name)
import Syntax.Span (Span, SpanOf (..))
import qualified Data.Map.Lazy as Map
import qualified GHC.Show as GHC (Show(..))
import qualified Relude as R (show)
import qualified Data.Text as T

-- | Expressions in the PureActor language, only contains
-- the types of expressions needed for a pure Actor calculus (i.e., nothing from lambda calculus)
-- We deviate slightly from this convention for the 'Letrec' form so that programs
-- are not as tedious to write.
data Expr
  = Spawn Expr Expr Span
  | Send Expr Tag Expr Span
  | Letrec [(Ide, Expr)] Expr Span
  | Var Ide
  | Lit Literal Span
  | Behavior Ide Handlers Span
  | Become Expr Expr Span
  | Begin [Expr] Span
  | Self Span
  deriving (Ord, Eq)

instance GHC.Show Expr where
  show = toString . showExpr
   
showExpr :: Expr -> Text
showExpr = \case
    Spawn b v _ -> "(spawn " <> showExpr b <> " " <> showExpr v <> ")"
    Send r (Tag t) v _ -> "(send " <> showExpr r <> " " <> fromString t <> " " <> showExpr v <> ")"
    Letrec bds bdy _ -> "(letrec (" <> T.unwords (map showBinding bds) <> ") " <> showExpr bdy <> ")"
    Var ide -> toText $ name ide
    Lit l _ -> showLit l
    Behavior ide hdls _ -> "(behavior (" <> toText (name ide) <> ") " <> showHandlers hdls <> ")"
    Become b v _ -> "(become " <> showExpr b <> " " <> showExpr v <> ")"
    Begin es _ -> "(begin " <> T.unwords (map showExpr es) <> ")"
    Self _ -> "self"
  where 
    showBinding (ide, expr) = "(" <> toText (name ide) <> " " <> showExpr expr <> ")"
  
-- | Literal expressions
data Literal = IntLit Int
             | BoolLit Bool
             | NilLit
  deriving (Ord, Eq)

showLit :: Literal -> Text
showLit = \case
  IntLit i -> R.show i
  BoolLit True -> "#t"
  BoolLit False -> "#f"
  NilLit -> "nil"

instance GHC.Show Literal where
  show = toString . showLit

-- | Tags are simply wrapped strings, used in messages and message handlers
newtype Tag = Tag String
  deriving (Ord, Eq)

instance GHC.Show Tag where
  show (Tag t) = t

-- | Handlers map a message tag to their handler
newtype Handlers = Handlers (Map Tag (Ide, Expr))
  deriving (Ord, Eq)

showHandlers :: Handlers -> Text
showHandlers (Handlers m) = "(" <> T.unwords (map showHandler (Map.toList m)) <> ")"
  where
    showHandler (Tag t, (ide, expr)) = "(" <> fromString t <> " (" <> toText (name ide) <> ") " <> showBody expr <> ")"
    showBody (Begin es _) = T.unwords (map showExpr es)
    showBody e = showExpr e

instance GHC.Show Handlers where
  show = toString . showHandlers

instance SpanOf Expr where
  spanOf =
    \case
      Spawn _  _ s -> s
      Become _ _ s -> s
      Send _ _ _ s -> s
      Letrec _ _ s -> s
      Var ide -> spanOf ide
      Lit _ s -> s
      Begin _ s -> s
      Behavior _ _ s -> s
      Self s -> s

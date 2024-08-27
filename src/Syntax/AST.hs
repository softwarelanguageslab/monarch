module Syntax.AST(Ide(..), Exp(..), Lit(..), Pat(..), Label(..), Span(..)) where

import Data.List (intercalate)
import Text.Printf
import Syntax.Span

-- |  An identifier in the original source code
data Ide = Ide { getName :: String , getSpan :: Span } deriving (Eq, Ord)

instance Show Ide where    
   show (Ide x s) = x

-- | An expression
data Exp = Lam [Ide] Exp Span
         | App Exp [Exp] Span
         | Spawn Exp Span
         | Letrec [Binding] Exp Span
         | Terminate Span
         | Self Span
         | Pair Exp Exp Span
         | Parameter Exp Span
         | Parametrize [Binding] Span
         | Blame Exp Span
         | Receive [(Pat, Exp)] Span
         | Send Exp Exp Span
         | Literal Lit Span
         | Ite  Exp Exp Exp Span
         | Var Ide
         | Begin [Exp] Span
         deriving (Eq, Ord)

-- | Literals are expressions that evaluate to themselves
data Lit = Num Integer | Boolean Bool | Symbol String deriving (Eq, Ord)

instance Show Lit where 
   show (Num n) = show n
   show (Boolean b) = show b 
   show (Symbol s) = show s
   

-- | Pattern language
data Pat = PairPat Pat Pat | IdePat Ide | ValuePat Lit deriving (Eq, Ord, Show)

-- | Labels for blame assignment
newtype Label = Label { getLabelName :: String } deriving (Eq, Ord, Show)

-- | A binding from an identifier to an expression, used in the so-called 
-- 'binding-forms' to introduce values to which free variables within 
-- its introduced scope will be bound.
type Binding = (Ide, Exp)

-- SpanOf instance
instance SpanOf Exp where
   spanOf e =
      case e of
         (Lam _ _ s) -> s
         (App _ _ s) -> s
         (Spawn _ s) -> s
         (Letrec _ _ s) -> s 
         (Terminate s) -> s
         (Self s) -> s
         (Pair _ _ s) -> s
         (Parameter _ s) -> s
         (Parametrize _ s) -> s
         (Blame _ s) -> s
         (Receive _ s) -> s
         (Send _ _ s) -> s
         (Literal _ s) -> s
         (Ite _ _ _ s) -> s
         (Var (Ide _ s)) ->  s
         (Begin _ s) -> s


instance Show Exp where
   show e =
      case e of
         (Lam x e _) -> printf "(lam (%s) %s)" (intercalate "," (map show x)) (show e)
         (App e1 es _) -> printf "(%s %s)" (show e1) (unwords (map show es))
         (Spawn e1 _) -> printf "(spawn %s)" (show e1)
         (Letrec bds es _) -> printf "(letrec (%s) %s)" (show bds) (show es)
         (Terminate _) -> "(terminate)"
         (Self _) -> "(self)"
         (Pair e1 e2 _) -> printf "(cons %s %s)" (show e1) (show e2)
         (Parameter e1 _) ->  printf "(parameter %s)" (show e1)
         (Parametrize _ _) -> undefined
         (Blame lbl _) -> printf "(blame %s)" (show lbl)
         (Receive pats _) -> printf "(receive %s)" (show pats)
         (Send e1 e2 _) -> printf "(send %s %s)" (show e1) (show e2)
         (Literal l _) -> show l
         (Ite e1 e2 e3 _) -> printf "(if %s %s %s)" (show e1) (show e2) (show e3)
         (Var x) -> show x
         (Begin es _) -> printf "(begin %s)" (unwords (map show es))

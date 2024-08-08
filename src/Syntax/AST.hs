module Syntax.AST(Ide(..), Exp(..), Lit(..), Pat(..), Label(..), Span(..)) where

import Syntax.Span

-- |  An identifier in the original source code
newtype Ide = Ide { getName :: String } deriving (Eq, Ord, Show)

-- | An expression
data Exp = Lam [Ide] Exp  
         | App Exp [Exp]
         | Spawn Exp 
         | Letrec [Binding] Exp
         | Terminate 
         | Self
         | Pair Exp Exp 
         | Parameter Exp 
         | Parametrize [Binding]
         | Blame Exp
         | Receive [(Pat, Exp)]
         | Send Exp Exp
         | Literal Lit
         | Ite  Exp Exp Exp
         | Var Ide
         | Begin [Exp]
         deriving (Eq, Ord, Show)

-- | Literals are expressions that evaluate to themselves
data Lit = Num Integer | Boolean Bool | Symbol String deriving (Eq, Ord, Show)

-- | Pattern language
data Pat = PairPat Pat Pat | IdePat Ide | ValuePat Lit deriving (Eq, Ord, Show)

-- | Labels for blame assignment
newtype Label = Label { getLabelName :: String } deriving (Eq, Ord, Show)

-- | A binding from an identifier to an expression, used in the so-called 
-- 'binding-forms' to introduce values to which free variables within 
-- its introduced scope will be bound.
type Binding = (Ide, Exp)

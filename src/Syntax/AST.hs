module Syntax.AST(Ide(..), Exp(..), Lit(..), Pat(..), Label(..)) where

newtype Ide = Ide String deriving (Eq, Ord, Show)
data Exp = Lam Ide Exp  
         | App Exp Exp   
         | Spawn Exp 
         | Letrec Ide Exp Exp
         | Terminate 
         | Self
         | Pair Exp Exp 
         | Parameter Exp 
         | Parametrize Ide Exp 
         | Blame Label
         | Receive [(Pat, Exp)]
         | Send Exp Exp
         | Literal Lit
         | Ite  Exp Exp Exp
         | Var Ide
         | Begin [Exp]
         deriving (Eq, Ord, Show)

data Lit = Num Integer | Boolean Bool | Symbol String deriving (Eq, Ord, Show)
data Pat = PairPat Pat Pat | IdePat Ide | ValuePat Lit deriving (Eq, Ord, Show)
newtype Label = Label String deriving (Eq, Ord, Show)


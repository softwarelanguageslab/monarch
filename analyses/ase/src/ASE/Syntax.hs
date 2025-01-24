-- | Additional context for the syntax of SimpleActor
{-# LANGUAGE Strict #-}
module ASE.Syntax(isAtomic, module Syntax.AST, Label) where

import Data.Kind
import Syntax.AST hiding (Label)
import Syntax.Span

-- | The type of label of an expression
type family Label e :: Type where   
   Label Exp = Span

-- | Checks whether an expression is atomic
isAtomic :: Exp -> Bool
isAtomic e = case e of
               Lam {}      -> True
               Self {}     -> False
               Literal {}  -> True
               Var {}      -> True
               _           -> False



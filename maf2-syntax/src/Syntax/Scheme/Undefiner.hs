{-# LANGUAGE FlexibleContexts, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
-- | This module removes `define`s from the AST and replaces them with a series of `letrec*`.
module Syntax.Scheme.Undefiner(undefineExp, undefineExp') where

import Data.List (singleton)
import Data.Default
import Syntax.Scheme.AST
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.Writer
import Data.Functor
import Control.Monad.Except
import Data.Function ((&))
import Data.Bifunctor
import Prelude hiding (span)

data Error = DefineNotAllowed Exp | TopLevelExpression Exp deriving Show

-- | Boolean that is true if `define`s are allowed otherwise `False`
data IsAllowed = IsAllowed {
   defineAllowed :: Bool,
   topLevel :: Bool
}

instance Default IsAllowed where
   def = IsAllowed { defineAllowed = True, topLevel = True }


class (MonadState Int m, MonadWriter [(Ide, Exp)] m, MonadError Error m, MonadReader IsAllowed m) => UndefineM m where
   -- | Executes the given computation in a context where `define`'s are not allowed
   notAllowed :: m a -> m a
   notAllowed = local (const def { defineAllowed = False, topLevel = False } )

   -- | Explicitly allows `define`s to be introduced
   allowed :: m a -> m a
   allowed = local (const def { defineAllowed = True, topLevel = False })

   -- | Executes the given computation only if define's are allowed, otherwise raises a `DefineNotAllowed` error
   ifAllowed :: Exp -> m a -> m a
   ifAllowed e m = ask >>= (\isAllowed ->
      if defineAllowed isAllowed then m else throwError (DefineNotAllowed e))

   isTopLevel :: m Bool
   isTopLevel = asks topLevel

   genSym :: Span -> m Ide
   genSym span =
      modify (+1) >> gets (Ide . ("_" ++) . show) <*> pure span



-- | Puts all collected `define's in a `letrec*` and clears the collected `define's
letrectify :: UndefineM m => m Exp -> m Exp
letrectify m = censor (const []) $ do
   (exp, bds) <- listen m
   if null bds
      then return exp
      else return $ Lrr bds exp (spanOf exp)

-- | Removes empty `begin` expressions from the given list of expressions 
removeEmptyBegins :: [Exp] -> [Exp]
removeEmptyBegins = filter matches
   where matches (Bgn [] _) = False
         matches Empty = False
         matches _ = True

-- | Undefines a sequence of expressions associated with a `begin` expression. 
-- This is rather tricky as the what is allowed depends on the position of the expression in question. 
--
-- If the `begin` expression occurs in a top-level position then `define' expressions and regular expressions
-- can be intermixed. This is compiled down to a single `letrec*` expression that binds the intermixed expressions
-- to generated identifiers. The generated identifier will share the same `span` as the original expression, making 
-- it possible to link the transformation back to its original source.
--
-- Nested `begin` expressions are treated as is they are flat. 
-- For example a:
-- ```
-- (begin (define a x) (begin (define b y) (+ x y)))
-- ``` 
-- gets translated to `(letrec* ((a x) (b y)) (begin (+ x y)))`. 
--
-- For top level expressions such as: 
-- ```
-- (begin (define a x) (displayln x) (define a y) (+ x y))
-- ```
-- the translation is `(letrec* ((a x) (_0 (displayln x)) (b y)) (+ x y))`a
undefineSequence :: forall m . UndefineM m =>  [Exp] -> m [Exp]
undefineSequence exs = isTopLevel >>= transform False exs
   where transform _ [x] _ = singleton <$> undefineM x
         transform doAdd (x:xs) allowed = do
               (transformedExp, dfs) <- listen (undefineM x)
               let doAdd' = doAdd || not (null dfs)
               first <- if doAdd' && not (isDefine x) && allowed then
                           genSym (spanOf x) >>= (\sym -> tell [(sym, transformedExp)]) >> return []
                        else if doAdd' && not (isDefine x) && not allowed then
                           throwError $ TopLevelExpression x
                        else return [transformedExp]
               rest  <- transform doAdd' xs allowed
               return (first ++ rest)

undefineM :: (UndefineM m) => Exp -> m Exp
-- literals cannot be undefined
undefineM n@(Num _ _) = return n
undefineM s@(Str _ _) = return s
undefineM b@(Bln _ _) = return b
undefineM s@(Sym _ _) = return s
undefineM c@(Cha _ _) = return c
undefineM l@(Nll _)   = return l
-- vars don't contain subexpressions
undefineM v@(Var _)  = return v
-- The branches and condition of an if cannot have define's
undefineM (Iff cnd csq alt span) =
   Iff <$> notAllowed (undefineM cnd)
       <*> notAllowed (undefineM csq)
       <*> notAllowed (undefineM alt)
       <*> return span
-- The body of a lambda introduces a new scope 
undefineM (Lam prs bdy span) =
   Lam    prs -- parameters remain untouched
      <$> letrectify (allowed $ undefineM bdy)
      <*> return span
-- Undefine (possible nested) begin expressions
undefineM (Bgn exs span) =
   Bgn <$> (undefineSequence exs <&> removeEmptyBegins) <*> pure span
-- A define variable needs to be transformed to a binding in the letrec
undefineM e@(Dfv nam bdy _) =
   ifAllowed e $ tell [(nam, bdy)] >> return Empty
-- A define function needs to be transformed to a binding to a lambda in the letrec
undefineM e@(Dff nam prs bdy span) =
   ifAllowed e $ tell [(nam, Lam prs bdy span)] >> return Empty
-- A set does not allow define's in its subexpression
undefineM (Set vrr exp span) =
   Set vrr <$> notAllowed (undefineM exp) <*> pure span
-- The body of a letrec introduces a new scope therefore 
-- `define`s are allowed there 
undefineM (Let bds bdy span) =
   Let bds <$> letrectify (allowed $ undefineM bdy) <*> pure span
undefineM (Ltt bds bdy span) =
   Ltt bds <$> letrectify (allowed $ undefineM bdy) <*> pure span
undefineM (Ltr bds bdy span) =
   Ltr bds <$> letrectify (allowed $ undefineM bdy) <*> pure span
undefineM (Lrr bds bdy span) =
   Lrr bds <$> letrectify (allowed $ undefineM bdy) <*> pure span
-- An application does not allow its operator and operand expressions do contain `define`s 
undefineM (App exp opr span) =
   App <$> notAllowed (undefineM exp) <*> mapM (notAllowed . undefineM) opr <*> pure span
-- Empty's translate to themselves 
undefineM Empty = return Empty
-- λα
-- Spawn, become and send expressions do not allow define's in their arguments 
undefineM (Spw beh args span) =
   Spw <$> notAllowed (undefineM beh) <*> mapM (notAllowed . undefineM) args <*> pure span
undefineM (Sen rcpt tag args span) =
   Sen <$> notAllowed (undefineM rcpt) <*> pure tag <*> mapM (notAllowed . undefineM) args <*> pure span
undefineM (Bec beh args span) =
   Bec <$> notAllowed (undefineM beh) <*> mapM (notAllowed . undefineM) args <*> pure span
-- Behavior and mirror expressions allow define's in their handler bodies
undefineM (Beh pars hdls span) =
   Beh pars <$> undefineM hdls <*> pure span
undefineM (Mir pars hdls span) =
   Mir pars <$> undefineM hdls <*> pure span
undefineM (Rcv hdls span) =
   Rcv <$> mapM undefineHandler hdls <*> pure span
undefineM (Sel span) = 
   return (Sel span)
undefineM (Ter span) =
   return (Ter span)
-- λα/c
undefineM (MsgC tag rcpt payload comm span) =   
         MsgC 
     <$> notAllowed (undefineM tag)
     <*> notAllowed (undefineM rcpt)
     <*> notAllowed (mapM undefineM payload)
     <*> notAllowed (undefineM comm)
     <*> pure span
undefineM (BehC contracts span) =
   BehC <$> notAllowed (mapM undefineM contracts) <*> pure span
undefineM (EnsC contracts span) =
   EnsC <$> notAllowed (mapM undefineM contracts) <*> pure span
undefineM (OnlC contracts span) = 
   OnlC <$> notAllowed (mapM undefineM contracts) <*> pure span
undefineM (Mon labels contract value span) =    
   Mon labels <$> notAllowed (undefineM contract) <*> notAllowed (undefineM value) <*> pure span
undefineM (Flat contract span) = 
   Flat <$> notAllowed (undefineM contract) <*> pure span
undefineM (Debug msg) = return (Debug msg)
undefineM e = error $ "unrecognized expression" ++ show e

undefineHandler :: UndefineM m => Hdl -> m Hdl
undefineHandler (Hdl tag prs bdy) =
   Hdl tag prs <$> allowed (undefineM bdy)

-- 

type Undefine = StateT Int (WriterT [(Ide, Exp)] (ReaderT IsAllowed (Except Error)))
instance UndefineM Undefine

undefineExp :: Exp -> Maybe Exp
undefineExp = either (const Nothing) Just . undefineExp'

undefineExp' :: Exp -> Either String Exp
undefineExp' e = bimap show fst result
   where result = evalStateT (letrectify $ undefineM e) 0 &
                  runWriterT                              &
                  flip runReaderT def                     &
                  runExcept

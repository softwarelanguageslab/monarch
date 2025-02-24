{-# LANGUAGE TupleSections #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
-- | Compiles S-expression syntax to a SimpleActor AST
module Syntax.Compiler(compile, parseFromString) where

import Control.Monad ((>=>))
import Syntax.Scheme.Parser
import qualified Syntax.Scheme.Parser as SExp
import Control.Monad.Except
import qualified Data.Set as Set
import Data.List ((\\))
import Syntax.AST
import Syntax.Span (SpanOf)

type MonadCompile m = (MonadError String m)

pureSpan :: (Applicative m, SpanOf e) => e -> m Span
pureSpan = pure . spanOf

parseFromString :: String -> Either String Exp
parseFromString = fmap head . parseSexp >=> compile

-- | Checks whether there are any duplicates in the 
-- given list of bindings.  If so, an error is raised.
checkDuplicates :: MonadCompile m => SExp -> m () 
checkDuplicates e = do 
      lst <- smapM name e
      let s = Set.fromList lst
      if (Set.size s) < (length lst) 
      then throwError $ "duplicates found at " ++ show (spanOf e) ++ ": " ++ show (lst \\ (Set.toList s))
      else return ()
   where name (Atom x _ ::: _) = return x
         name e = throwError $ "Invalid binding at " ++ show (spanOf e)

compile :: MonadCompile m => SExp -> m Exp
compile ex@(Atom "lambda" _ ::: args ::: es) =
   Lam <$> smapM compileParam args
       <*> (mkSeq <$> smapM compile es <*> pureSpan ex)
       <*> pureSpan ex
   where mkSeq [x] = const x 
         mkSeq xs = Begin xs
compile e@(Atom "lambda" _ ::: _) =
   throwError $ "invalid syntax for lambda " ++ show e
compile ex@(Atom "spawn^" _ ::: e ::: SNil _) = Spawn <$> compile e <*> pureSpan ex
compile e@(Atom "spawn^" _ ::: _) =
   throwError $ "invalid syntax for spawn " ++ show e
compile ex@(Atom "letrec" _ ::: bds ::: e2 ::: SNil _) = do
   checkDuplicates bds
   Letrec <$> smapM compileBdn bds <*> compile e2 <*> pureSpan ex
compile e@(Atom "letrec" _ ::: _) =
   throwError $ "invalid syntax for letrec " ++ show e
compile ex@(Atom "letrec*" _ ::: bds ::: e2 ::: SNil _) = do
   checkDuplicates bds
   Letrec <$> smapM compileBdn bds <*> compile e2 <*> pureSpan ex
compile e@(Atom "letrec*" _ ::: _) =
   throwError $ "invalid syntax for letrec* " ++ show e
compile ex@(Atom "terminate" _ ::: SNil _) = pure $ Terminate (spanOf ex)
compile e@(Atom "terminate" _ ::: _) =
   throwError $ "invalid syntax for terminate " ++ show e
compile ex@(Atom "pair" _ ::: e1 ::: e2 ::: SNil _) =
   Pair <$> compile e1 <*> compile e2 <*> pureSpan ex
compile e@(Atom "pair" _ ::: _) =
   throwError $ "invalid syntax for pair " ++ show e
compile ex@(Atom "receive" _ ::: pats ::: SNil _) =
   Receive <$> compilePats pats <*> pureSpan ex
compile ex@(Atom "match" _ ::: on ::: pats ::: SNil _) =
   Match <$> compile on <*> compilePats pats <*> pureSpan ex
compile ex@(Atom "match" _ ::: _) =
   throwError $ "invalid syntax for 'match' " ++ show ex
compile em@(Atom "meta" _ ::: e ::: SNil _) =
   Meta <$> compile e <*> pure (spanOf em)
compile (Atom "dyn" _ ::: Atom dyn s ::: SNil _) =
   return $ DynVar $ Ide dyn s
compile e@(Atom "dyn" _ ::: _) =
   throwError $ "invalid syntax for dyn " ++ show e
compile e@(Atom "input" _ ::: SNil _) = 
   return $ Input (spanOf e)
compile e@(Atom "input" _ ::: _) = 
   throwError $ "invalid syntax for input " ++ show e
compile ex@(SExp.Num n _) =
   return $ Literal (Syntax.AST.Num n) (spanOf ex)
compile ex@(SExp.Bln b _) =
   return $ Literal (Syntax.AST.Boolean b) (spanOf ex)
compile ex@(Atom "if" _ ::: e1 ::: e2 ::: e3 ::: SNil _) =
   Ite <$> compile e1 <*> compile e2 <*> compile e3 <*> pureSpan ex
compile e@(Atom "if" _ ::: _) =
   throwError $ "invalid syntax for if " ++ show e
compile ex@(Atom "begin" _ ::: exs) =
   Begin <$> smapM compile exs <*> pureSpan ex
compile ex@(Atom "self^" _) = pure $ Self (spanOf ex)
compile (Atom "quote" span' ::: s ::: SNil _) = compile (Quo s span')
compile ex@(Atom "blame" _ ::: party ::: _) = Blame <$> compile party <*> pureSpan ex
compile ex@(Atom "parametrize" _ ::: bds ::: bdy ::: SNil _) =
   Parametrize <$> smapM compileBdn bds <*> compile bdy <*> pureSpan ex
compile e@(Atom "blame" _ ::: _) =
   throwError $ "invalid syntax for blame " ++ show e
-- For debugging purposes
compile e@(Atom "fresh" _ ::: SNil _) = return $ Fresh (spanOf e)
compile e@(Atom "fresh" _ ::: _) = 
   throwError $ "invalid syntax for fresh " ++ show e
compile e@(Atom "loc" _ ::: ex ::: SNil _) = return $ Loc (show ex) (spanOf e)
compile e@(Atom "loc" _ ::: _) = 
   throwError $ "invalid syntax for loc" ++ show e
compile e@(Atom "trace" _ ::: ex ::: SNil _) = 
   Trace <$> compile ex <*> pure (spanOf e)
compile e@(Atom "trace" _ ::: _) = 
   throwError $ "invalid syntax for trace " ++ show e
compile ex@(Atom "parallel" _ ::: es) =
   Parallel <$> smapM compile es <*> pure (spanOf ex)
compile ex@(Atom "error" _ ::: e ::: SNil _) =
   Error <$> compile e <*> pure (spanOf ex)
compile ex@(Atom "error" _ ::: _) =
   throwError $ "invalid syntax for error " ++ show ex
compile ex@(op ::: oprs) =
   App <$> compile op <*> smapM compile oprs <*> pureSpan ex

compile ex@(Atom x _) = return $ Var $ Ide x (spanOf ex)
compile ex@(Quo (Atom s _) _) = return $ Literal (Symbol s) (spanOf ex)
compile ex@(Quo (SNil _) _) = return $ Literal Nil (spanOf ex)
-- TODO: strings are not symbols!
compile ex@(Str str _) = return $ Literal (Symbol str) (spanOf ex)
compile ex@(Cha c _) = return $ Literal  (Character c) (spanOf ex)
compile e = throwError $ "invalid syntax " ++ show e ++ " at " ++ show (spanOf e)

compileBdn :: MonadError String m => SExp -> m (Ide, Exp)
compileBdn ((Atom x s) ::: e ::: SNil _) =
   (Ide x s ,) <$> compile e
compileBdn e =
   throwError $ "invalid syntax for binding in letrec " ++ show e

compileParam :: MonadError String m => SExp -> m Ide
compileParam ex@(Atom x _) = return $ Ide x (spanOf ex)
compileParam e = throwError $ "invalid parameter " ++ show e

compilePats :: MonadError String m => SExp -> m [(Pat, Exp)]
compilePats = smapM compileHandler
   where compileHandler :: MonadError String m => SExp -> m (Pat, Exp)
         compileHandler (pat ::: e ::: SNil _) = compilePat pat >>= (\p -> fmap (p,) (compile e))
         compileHandler e = throwError $ "invalid handler " ++ show e

compilePat :: MonadError String m => SExp -> m Pat
compilePat (Atom "pair" _ ::: pat1 ::: pat2 ::: SNil _) =
   PairPat <$> compilePat pat1 <*> compilePat pat2
compilePat ex@(Atom x _) = return (IdePat (Ide x (spanOf ex)))
compilePat (SExp.Num n _) = return (ValuePat $ Syntax.AST.Num n)
compilePat (SExp.Bln b _) = return (ValuePat $ Syntax.AST.Boolean b)
compilePat (SExp.SNil _) = return (ValuePat Syntax.AST.Nil)
compilePat (Quo (Atom s _) _) = return (ValuePat $ Syntax.AST.Symbol s)
compilePat (Atom "quote" _ ::: Atom s _ ::: SNil _) = return (ValuePat $ Syntax.AST.Symbol s)
compilePat e = throwError $ "invalid pattern " ++ show e

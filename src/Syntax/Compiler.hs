{-# LANGUAGE TupleSections #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
module Syntax.Compiler where

import Syntax.Scheme.Parser
import qualified Syntax.Scheme.Parser as SExp
import Control.Monad.Error
import Syntax.AST

parseFromString :: String -> Either String Exp
parseFromString = fmap head . parseSexp >=> compile

compile :: MonadError String m => SExp -> m Exp
compile (Atom "lambda" _ ::: args ::: e ::: (SNil _)) =
   Lam <$> smapM compileParam args <*> compile e
compile e@(Atom "lambda" _ ::: _) =
   throwError $ "invalid syntax for lambda " ++ show e
compile (Atom "spawn" _ ::: e ::: SNil _) = Spawn <$> compile e
compile e@(Atom "spawn" _ ::: _) =
   throwError $ "invalid syntax for spawn " ++ show e
compile (Atom "letrec" _ ::: bds ::: e2 ::: SNil _) =
   Letrec <$> smapM compileBdn bds <*> compile e2
compile e@(Atom "letrec" _ ::: _) =
   throwError $ "invalid syntax for letrec " ++ show e
compile (Atom "terminate" _ ::: SNil _) = pure Terminate
compile e@(Atom "terminate" _ ::: _) =
   throwError $ "invalid syntax for terminate " ++ show e
compile (Atom "pair" _ ::: e1 ::: e2 ::: SNil _) =
   Pair <$> compile e1 <*> compile e2
compile e@(Atom "pair" _ ::: _) =
   throwError $ "invalid syntax for pair " ++ show e
compile (Atom "receive" _ ::: pats ::: SNil _) =
   Receive <$> compilePats pats
compile (Atom "send" _ ::: receiver ::: payload ::: SNil _) =
   Send <$> compile receiver <*> compile payload
compile e@(Atom "send" _ ::: _) =
   throwError $ "invalid syntax for send " ++ show e
compile (SExp.Num n _) =
   return $ Literal $ Syntax.AST.Num n
compile (SExp.Bln b _) =
   return $ Literal $ Syntax.AST.Boolean b
compile (Atom "if" _ ::: e1 ::: e2 ::: e3 ::: SNil _) =
   Ite <$> compile e1 <*> compile e2 <*> compile e3
compile e@(Atom "if" _ ::: _) =
   throwError $ "invalid syntax for if " ++ show e
compile (Atom "begin" _ ::: exs) =
   Begin <$> smapM compile exs
compile (Atom "self" _ ::: SNil _) = pure Self
compile e@(Atom "self" _ ::: _) =
   throwError $ "invalid syntax for self " ++ show e
compile (Atom "quote" span' ::: s ::: SNil _) = compile (Quo s span')
compile (Atom "blame" _ ::: (Atom "quote" _ ::: (Atom s _) ::: _) ::: _) = 
   return (Blame (Label s))
compile e@(Atom "blame" _ ::: _) =
   throwError $ "invalid syntax for blame " ++ show e
compile (op ::: oprs) =
   App <$> compile op <*> smapM compile oprs

compile (Atom x _) = return $ Var $ Ide x
compile (Quo (Atom s _) _) = return $ Literal (Symbol s)
compile e = throwError $ "invalid syntax " ++ show e

compileBdn :: MonadError String m => SExp -> m (Ide, Exp)
compileBdn ((Atom x _) ::: e ::: SNil _) =
   (Ide x,) <$> compile e
compileBdn e =
   throwError $ "invalid syntax for binding in letrec " ++ show e

compileParam :: MonadError String m => SExp -> m Ide
compileParam (Atom x _) = return $ Ide x
compileParam e = throwError $ "invalid parameter " ++ show e

smapM :: MonadError String m => (SExp -> m a) -> SExp -> m [a]
smapM _ (SNil _) = return []
smapM f (a ::: as) = do
   v <- f a
   vs <- smapM f as
   return (v:vs)
smapM _ e = throwError $ "malformed list " ++ show e

compilePats :: MonadError String m => SExp -> m [(Pat, Exp)]
compilePats = smapM compileHandler
   where compileHandler :: MonadError String m => SExp -> m (Pat, Exp)
         compileHandler (pat ::: e ::: SNil _) = compilePat pat >>= (\p -> fmap (p,) (compile e))
         compileHandler e = throwError $ "invalid handler " ++ show e

compilePat :: MonadError String m => SExp -> m Pat
compilePat (Atom "pair" _ ::: pat1 ::: pat2 ::: SNil _) =
   PairPat <$> compilePat pat1 <*> compilePat pat2
compilePat (Atom x _) = return (IdePat (Ide x))
compilePat (SExp.Num n _) = return (ValuePat $ Syntax.AST.Num n)
compilePat (SExp.Bln b _) = return (ValuePat $ Syntax.AST.Boolean b)
compilePat (Quo (Atom s _) _) = return (ValuePat $ Syntax.AST.Symbol s)
compilePat e = throwError $ "invalid pattern " ++ show e

module Language.PureActor.Compiler(
    CompileError(..),
    compileString
  ) where

import Control.Monad.Except
import Language.PureActor.AST
import Syntax.Scheme.Parser (parseSexp, pattern (:::))
import qualified Syntax.Scheme.Parser as SExp
import Syntax.Span (spanOf)
import Syntax.Ide (Ide(..))
import qualified GHC.Show as S
import qualified Data.Map.Lazy as Map

-----------------------------------------
-- Errors
-----------------------------------------

data CompileError
  = ParseError String
  | CompileError String
  deriving (Ord, Eq, Show)

-----------------------------------------
-- Compilation rules
-----------------------------------------

-- | Monad in which compilations will occur, is mainly used for error reporting
type MonadCompile m = (MonadError String m)

compileHandlers :: (MonadCompile m) => SExp.SExp -> m Handlers
compileHandlers = fmap (Handlers . Map.fromList) . SExp.smapM compileHandler
  where
    compileHandler (SExp.Atom tag _ ::: (SExp.Atom varName s ::: SExp.SNil _) ::: body) = do
      compiledBody <- compileSequence body
      return $ (Tag tag, (Ide varName s, Begin compiledBody (spanOf body)))
            

compileSequence :: MonadCompile m => SExp.SExp -> m [Expr]
compileSequence = SExp.smapM compile

-- | Compile a single S-expression into a PureActor expression
compile :: (MonadCompile m) => SExp.SExp -> m Expr
compile expr =
    case expr of
      SExp.Atom nam s -> return $ Var (Ide nam s)
      (SExp.Atom "send" _) ::: ref ::: (SExp.Atom tag _) ::: val ::: SExp.SNil _ ->
        Send <$> compile ref <*> (pure $ Tag tag) <*> compile val <*> (pure $ spanOf expr)
      (SExp.Atom "send" _) ::: _ ->
        throwError $ "malformed 'send' expression at " ++ (toString $ S.show $ spanOf expr)
      (SExp.Atom "spawn" _) ::: handlers ->
        Spawn <$> compileHandlers handlers <*> pure (spanOf expr)
      (SExp.Atom "become" _) ::: handlers ->
        Become <$> compileHandlers handlers <*> pure (spanOf expr)
      (SExp.Atom "letrec" _) ::: (SExp.Atom nam s ::: binding ::: SExp.SNil _) ::: body ::: SExp.SNil _ ->
        Letrec (Ide nam s) <$> compile binding <*> compile body <*> pure (spanOf expr)
      (SExp.Atom "letrec" _) ::: _  ->
        throwError $ "malformed 'letrec' expression at " ++ (toString $ S.show $ spanOf expr)
      (SExp.Atom "begin" _) ::: exs -> Begin <$> compileSequence exs <*> pure (spanOf expr)
      (SExp.Num n _) -> return $ Lit (IntLit (fromIntegral n)) (spanOf expr)
      _ -> throwError $ "unrecognised expression type at " ++ (toString $ S.show $ spanOf expr)
          

-----------------------------------------
-- Main compiler entrypoint
-----------------------------------------

compileString :: String -> Either CompileError Expr
compileString =
  handleParseError . parseSexp >=> first CompileError . compile
  where
    handleParseError =
      join . bimap ParseError (maybe (Left (ParseError "unexpected end of input")) Right . viaNonEmpty head)

{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE FlexibleContexts #-}
-- | Translates a parse tree in Erlang Abstract Format to 
-- an AST that can be used for analysis.
module Syntax.Erlang.Compiler where

import Syntax.Erlang.AST
import Syntax.Erlang.Parser (Term, Loc)
import qualified Syntax.Erlang.Parser as T

import Control.Monad.Except


-- | The types of errors the compiler can generate
data CompileErrorType = NotAModule       -- ^ thrown when a module was expected
                      | InvalidFunction  -- ^ thrown when the function specification is invalid
                      deriving (Eq, Ord, Show)
-- | A compiler error with an optional location in the source code
data CompileError = CompileError CompileErrorType (Maybe Loc)
                    deriving (Eq, Ord, Show)

-- | Raise an error at the given location
raiseAt :: (MonadError CompileError m) => CompileErrorType -> Loc -> m a
raiseAt tp = throwError . CompileError tp . Just

-- | Raise an error without passing location information
raise :: (MonadError CompileError m) => CompileErrorType -> m a
raise = throwError . (`CompileError` Nothing)

type CompileM m = MonadError CompileError m

-- | Compile the given term to a module.
compileModule :: CompileM m => Term -> m Module
compileModule (T.List ts _) =  Module <$> mapM compileDecl ts
compileModule e = raiseAt NotAModule (T.locOf e)

-- 
compileDecl :: CompileM m => Term -> m Declaration
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "export" _, fns] _)= undefined
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "import" _, fns] _)= undefined
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "module" _, fns] _)= undefined
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "file" _, T.Tuple [line, col] _] _)= undefined
compileDecl (T.Tuple [T.Atom "function" _, _, T.Atom name nameLoc, T.Number arity _, T.List clauses _] loc)=
   Function (FunctionIdentifier name (fromInteger arity) nameLoc) <$> mapM compileClauses clauses <*> pure loc
compileDecl (T.Tuple [T.Atom "function" _, _, _, _, _] loc) =
   raiseAt InvalidFunction loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "record" _, T.Tuple [name, fields] _] _)= undefined
compileDecl (T.Tuple [T.Atom "attribute" _, _, _wild, T.Tuple [line, col] _] loc)= return (Wild loc)

compileClauses :: CompileM m => Term -> m Clause
compileClauses = undefined



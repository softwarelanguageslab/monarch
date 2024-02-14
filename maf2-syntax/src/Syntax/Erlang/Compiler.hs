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
                      | InvalidSyntax
                      | NotSupported
                      | ExpectedChar
                      | NotALiteral
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

-- | Compile the given term to a FunctionIdentifier.
--
-- These terms have the forms of identifier/arity
compileFnIdentifier :: (CompileM m) => Term -> m FunctionIdentifier
compileFnIdentifier (T.Tuple [T.Atom name _, T.Number arity _] loc) =
   return (FunctionIdentifier name arity loc)
compileFnIdentifier e = raiseAt InvalidSyntax (T.locOf e)

-- 
compileDecl :: CompileM m => Term -> m Declaration
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "export" _, T.List fns _] loc) =
   Export <$> mapM compileFnIdentifier fns <*> pure loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "import" _, T.Tuple [T.Atom name locNam, T.List fns _] _] loc) =
   Import (Identifier name locNam) <$> mapM compileFnIdentifier fns <*> pure loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "module" _, T.Atom name nameLoc] loc) =
   return (ModuleDecl (Identifier name nameLoc) loc)
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "file" _, T.Tuple [T.Atom file _, T.Number col _] _] loc) =
   return (File file col loc)
compileDecl (T.Tuple [T.Atom "function" _, _, T.Atom name nameLoc, T.Number arity _, T.List clauses _] loc)=
   Function (FunctionIdentifier name (fromInteger arity) nameLoc) <$> mapM compileClauses clauses <*> pure loc
compileDecl (T.Tuple [T.Atom "function" _, _, _, _, _] loc) =
   raiseAt InvalidFunction loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "record" _, T.Tuple [name, fields] _] loc)=
   raiseAt NotSupported loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, _wild, _] loc)= return (Wild loc)
compileDecl e = raiseAt NotSupported (T.locOf e)

-- | Checks if the given term is a character and returns it 
-- if so, otherwise generates "ExpectedChar" error
isChar :: CompileM m => Term -> m Char
isChar (T.Character char _) = return char
isChar e = raiseAt ExpectedChar (T.locOf e)

-- | Compile literals
compileLiteral :: CompileM m => Term -> m Literal
compileLiteral (T.Tuple [T.Atom "atom" _, _, T.Atom nam _] loc) =
   return (AtomLit nam loc)
compileLiteral (T.Tuple [T.Atom "char" _, _, T.Character char _] loc) =
   return (CharLit char loc)
compileLiteral (T.Tuple [T.Atom "float" _, _, T.Floating vlu _] loc) =
   return (FloatLit vlu loc)
compileLiteral (T.Tuple [T.Atom "integer" _, _, T.Number vlu _] loc) =
   return (IntLit vlu loc)
compileLiteral (T.Tuple [T.Atom "string" _, _, T.List cs _] loc) =
   StrLit <$> mapM isChar cs <*> pure loc
compileLiteral e = raiseAt NotALiteral (T.locOf e)

-- | Compile a pattern from a function head or bindings
compilePattern :: CompileM m => Term -> m Pattern
compilePattern (T.Tuple [T.Atom "var" _, _, T.Atom var varLoc] _) =
   return (VariablePat (Identifier var varLoc))
compilePattern lit = AtomicPat <$> compileLiteral lit

-- | Compile a clause from a function head, or a "case" expression
compileClauses :: CompileM m => Term -> m Clause
compileClauses (T.Tuple [T.Atom "clause" _, _, T.List [pat] _, T.List [] _, T.List bod _] _) =
   SimpleClause <$> compilePattern pat <*> compileSequence bod
compileClauses e = raiseAt NotSupported (T.locOf e)

compileSequence :: CompileM m => [Term] -> m [Expr]
compileSequence = mapM compileExpression

-- | Compile term to an expression
compileExpression :: (CompileM m) => Term -> m Expr
compileExpression (T.Tuple [T.Atom "block" _, _, T.List bod _] loc) =
   Block <$> compileSequence bod <*> pure loc
compileExpression (T.Tuple [T.Atom "case" _, _, expr, T.List clauses _] loc) =
   Case <$> compileExpression expr <*> mapM compileClauses clauses <*> pure loc
compileExpression (T.Tuple [T.Atom "catch" _, _, expr] loc) =
   Catch <$> compileExpression expr <*> pure loc
compileExpression (T.Tuple [T.Atom "call" _, _, operator, T.List operands _] loc) =
   Call <$> compileExpression operator <*> compileSequence operands <*> pure loc
-- compileExpression (T.Tuple [T.Atom "remote", _, 
compileExpression lit = fmap Atomic (compileLiteral lit)



{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE FlexibleContexts #-}
-- | Translates a parse tree in Erlang Abstract Format to 
-- an AST that can be used for analysis.
module Syntax.Erlang.Compiler(compile, compileString) where

import Syntax.Erlang.AST
import Syntax.Erlang.Parser (Term)
import qualified Syntax.Erlang.Parser as T
import Control.Monad ((>=>))
import Control.Monad.Except
import Syntax.Span

------------------------------------------------------------
-- Utility functions
------------------------------------------------------------

mapLeft :: (a -> b) -> Either a c -> Either b c
mapLeft f (Left a)  = Left (f a)
mapLeft _ (Right c) = Right c

------------------------------------------------------------
-- Compiler
------------------------------------------------------------

-- | The types of errors the compiler can generate
data CompileErrorType = NotAModule       -- ^ thrown when a module was expected
                      | InvalidFunction  -- ^ thrown when the function specification is invalid
                      | InvalidSyntax
                      | NotSupported
                      | ExpectedChar
                      | NotALiteral
                      deriving (Eq, Ord, Show)
-- | A compiler error with an optional location in the source code
data CompileError = CompileError CompileErrorType (Maybe Term) (Maybe Span)
                  | ParseError T.ParseError
                    deriving (Eq, Show)

-- | Raise an error at the given location
raiseAt :: (MonadError CompileError m) => CompileErrorType -> Span -> m a
raiseAt tp = throwError . CompileError tp Nothing . Just

-- | Raise an error at the given location and term
raiseAtTerm :: (MonadError CompileError m) => CompileErrorType -> Term -> m a
raiseAtTerm tp t = throwError (CompileError tp (Just t) (Just (spanOf t)))

-- | Raise an error without passing location information
raise :: (MonadError CompileError m) => CompileErrorType -> m a
raise tp = throwError (CompileError tp Nothing Nothing)

type CompileM m = MonadError CompileError m

-- | Compile the given term to a module.
compileModule :: CompileM m => Term -> m Module
compileModule (T.List ts _) =  Module <$> mapM compileDecl ts
compileModule e = raiseAt NotAModule (spanOf e)

-- | Compile the given term to a FunctionIdentifier.
--
-- These terms have the forms of identifier/arity
compileFnIdentifier :: (CompileM m) => Term -> m FunctionIdentifier
compileFnIdentifier (T.Tuple [T.Atom name _, T.Number arity _] loc) =
   return (FunctionIdentifier name arity loc)
compileFnIdentifier e = raiseAt InvalidSyntax (spanOf e)

-- 
compileDecl :: CompileM m => Term -> m Declaration
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "export" _, T.List fns _] loc) =
   Export <$> mapM compileFnIdentifier fns <*> pure loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "import" _, T.Tuple [T.Atom name locNam, T.List fns _] _] loc) =
   Import (Identifier name locNam) <$> mapM compileFnIdentifier fns <*> pure loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "module" _, T.Atom name nameSpan] loc) =
   return (ModuleDecl (Identifier name nameSpan) loc)
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "file" _, T.Tuple [T.Atom file _, T.Number col _] _] loc) =
   return (File file col loc)
compileDecl (T.Tuple [T.Atom "function" _, _, T.Atom name nameSpan, T.Number arity _, T.List clauses _] loc)=
   Function (FunctionIdentifier name (fromInteger arity) nameSpan) <$> mapM compileClauses clauses <*> pure loc
compileDecl (T.Tuple [T.Atom "function" _, _, _, _, _] loc) =
   raiseAt InvalidFunction loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom "record" _, T.Tuple [name, fields] _] loc)=
   raiseAt NotSupported loc
compileDecl (T.Tuple [T.Atom "attribute" _, _, T.Atom wild _, _] loc)= return (Wild wild loc)
compileDecl e = raiseAt NotSupported (spanOf e)

-- | Checks if the given term is a character and returns it 
-- if so, otherwise generates "ExpectedChar" error
isChar :: CompileM m => Term -> m Char
isChar (T.Character char _) = return char
isChar e = raiseAt ExpectedChar (spanOf e)

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
compileLiteral (T.Tuple [T.Atom "nil" _, _] loc) =
   return (NilLit loc)
-- TODO: support 'bin' literals which are bitstring patterns/values
compileLiteral e = raiseAtTerm NotALiteral e

-- | Compile a pattern from a function head or bindings
compilePattern :: CompileM m => Term -> m Pattern
compilePattern (T.Tuple [T.Atom "var" _, _, T.Atom var varSpan] _) =
   return (VariablePat (Identifier var varSpan))
compilePattern (T.Tuple [T.Atom "match" _, _, pat1, pat2] _) =
   CompoundPat <$> compilePattern pat1 <*> compilePattern pat2
compilePattern (T.Tuple [T.Atom "cons" _, _, pat1, pat2] _) =
   ConsPat <$> compilePattern pat1 <*> compilePattern pat2
compilePattern lit = AtomicPat <$> compileLiteral lit

-- | Compile a clause from a function head, or a "case" expression
compileClauses :: CompileM m => Term -> m Clause
compileClauses (T.Tuple [T.Atom "clause" _, _, T.List [pat] _, T.List guards _, T.List bod _] _) =
   SimpleClause <$> compilePattern pat <*> mapM compileTermAsSequence guards <*> compileSequence bod
compileClauses e = raiseAt NotSupported (spanOf e)

-- | Compiles a list of terms to a list of AST nodes
compileSequence :: CompileM m => [Term] -> m [Expr]
compileSequence = mapM compileExpression

-- | Assumes that the term is a list and compiles it as a sequence
compileTermAsSequence :: CompileM m => Term -> m Body
compileTermAsSequence (T.List es _) = compileSequence es
compileTermAsSequence e = raiseAt InvalidSyntax (spanOf e)

-- | Compiles an atom to an identifier (if it is a valid atom)
compileIdent :: CompileM m => Term -> m Identifier
compileIdent (T.Tuple [T.Atom "atom" _, _, T.Atom nam namSpan] _) =
   return (Identifier nam namSpan)
compileIdent e = raiseAt InvalidSyntax (spanOf e)

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
compileExpression (T.Tuple [T.Atom "remote" _, _, modName, funName] _) =
   ModVar <$> compileIdent modName <*> compileIdent funName
compileExpression (T.Tuple [T.Atom "if" _, _, T.List clauses _] loc) =
   If <$> mapM compileClauses clauses <*> pure loc
compileExpression (T.Tuple [T.Atom "match" _, _, pat, matchExp] loc) =
   Match <$> compilePattern pat <*> compileExpression matchExp <*> pure False <*> pure loc
compileExpression (T.Tuple [T.Atom "maybe_match" _, _, pat, matchExp] loc) =
   Match <$> compilePattern pat <*> compileExpression matchExp <*> pure True <*> pure loc
compileExpression (T.Tuple [T.Atom "receive" _, _, T.List clauses _] loc) =
   Receive <$> mapM compileClauses clauses <*> pure Nothing <*> pure loc
compileExpression (T.Tuple [T.Atom "receive" _, _, T.List clauses _, afterExp, T.List afterBod _] loc) =
   Receive <$> mapM compileClauses clauses <*> (Just <$> liftA2 (,) (compileExpression afterExp) (compileSequence afterBod)) <*> pure loc
compileExpression (T.Tuple [T.Atom "tuple" _, _, T.List es _] loc) =
   Tuple <$> compileSequence es <*> pure loc
compileExpression (T.Tuple [T.Atom "var" _, _, T.Atom varName varSpan] _) =
   return (Var (Identifier varName varSpan))
compileExpression (T.Tuple [T.Atom "cons" _, _, car, cdr] loc) =
   Cons <$> compileExpression car <*> compileExpression cdr <*> pure loc
compileExpression (T.Tuple [T.Atom "op" _, _, T.Atom op opSpan, e1, e2] loc) = 
   Call (Var (Identifier op opSpan)) <$> mapM compileExpression [e1, e2] <*> pure loc
compileExpression lit = fmap Atomic (compileLiteral lit)

-- | Compile a term that represents a module to an AST node
compile :: Term -> Either CompileError Module
compile = compileModule

-- | Compile a string representing the module to an AST node
compileString :: String -> String -> Either CompileError Module
compileString name = mapLeft ParseError . T.parseErlangTerm name >=> compile

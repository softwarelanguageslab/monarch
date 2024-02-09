-- | AST representation for Erlang
module Syntax.Erlang.AST where

-- NOTE: we use 'Loc' from the parsed terms for identification purposes.
-- Erlang Abstract Format also has the 'ANNO' field which supposedly 
-- contains line and column number information but in our test 
-- cases it did not. There also does not seem to be a standardized format
-- for this field. Hence, we choice not to use it for identification purposes.
import Syntax.Erlang.Parser (Loc)

------------------------------------------------------------
-- Aliases for clarity
------------------------------------------------------------

-- | A name of a module
type ModuleName = Identifier

-- | The body of a function
type Body = [Expr]

------------------------------------------------------------
-- AST
------------------------------------------------------------

-- | A module is a series of declarations and attributes
newtype Module = Module [Declaration]

-- | An identifier (e.g., variable, module name, ...)
data Identifier = Identifier String Loc

-- | A function identifier is like an identifier
-- but also keeps track of the arity of the function
data FunctionIdentifier = FunctionIdentifier String Int Loc

-- | A declaration combines Erlang's attributes (e.g., -import directive)
-- and declarations (e.g., functions)
data Declaration = Import ModuleName [FunctionIdentifier] Loc  -- ^ -import(...)
                 | Export [FunctionIdentifier] Loc             -- ^ -export(...)
                 | Function FunctionIdentifier [Clause] Loc    -- ^ function definition
                 | ModuleDecl Identifier Loc     -- ^ -module(...)
                 | File String Int Loc           -- ^ -file(FILE, LINE)
                 | Record Identifier Field Loc   -- ^ -record(Identifier, {Field ...})
                 | Wild Loc                      -- ^ a 'wild' attribute, not parsed further

-- |  A field from a record type.
-- A field must contain a name (which is an atom), and an optional default value,
-- the optional types are ignored.
data Field = Field Identifier (Maybe Expr) Loc

-- | Atomic literals
data Literal = AtomLit  String  Loc   
             | CharLit  Char    Loc
             | FloatLit Float   Loc
             | IntLit   Integer Loc 
             | StrLit   String  Loc

-- | Patterns, used in function heads and bindings
data Pattern = AtomicPat Literal

-- | An expression, currently not all Erlang expressions
--  are supported, they are just omitted from the AST.
--
--  If the compiler (from 'Syntax.Erlang.Compiler') encouters
--  these unsupported expressions anyway, an error is reported.
data Expr = Atomic Literal
          | Block [Expr] Loc
          | Case  Expr [Clause] Loc
          | Catch Expr Loc
          | Call  Expr [Expr] Loc
          | If [Clause] Loc
          | Match Pattern Expr Bool Loc 
          | Receive [Clause] (Maybe (Expr, Body)) Loc 
          | Tuple [Expr] Loc
          | List  [Expr] Loc
          | Var Identifier
          | ModVar ModuleName Identifier

data Clause

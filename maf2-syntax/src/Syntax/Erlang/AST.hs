-- | AST representation for Erlang Abstract Format (EAF)
module Syntax.Erlang.AST where

-- NOTE: we use 'Span' from the parsed terms for identification purposes.
-- Erlang Abstract Format also has the 'ANNO' field which supposedly 
-- contains line and column number information but in our test 
-- cases it did not. There also does not seem to be a standardized format
-- for this field. Hence, we choice not to use it for identification purposes.
import Syntax.Span (Span, SpanOf(..))
import Syntax.Ide
import Data.Set (Set)
import Data.Map (Map)
import qualified Data.Set as Set
import qualified Data.Map as Map
import Data.Maybe

------------------------------------------------------------
-- Aliases for clarity
------------------------------------------------------------

-- | A name of a module
type ModuleName = Identifier

-- | The body of a function
type Body = [Expr]

------------------------------------------------------------
-- AST
------------------------------------------------------------

-- | A module is a series of declarations and attributes
newtype Module = Module { moduleDeclarations :: [Declaration] }
               deriving (Eq, Ord, Show)

-- | An identifier (e.g., variable, module name, ...)
type Identifier = Ide

-- | A function identifier is like an identifier
-- but also keeps track of the arity of the function
data FunctionIdentifier = FunctionIdentifier String Integer Span
                        deriving (Eq, Ord, Show)

data QualifiedIdentifier = QualifiedIdentifier { qualifiedName :: ModuleName, qualifiedIdent :: Identifier }
                         deriving (Eq, Ord, Show)


instance SpanOf FunctionIdentifier where
  spanOf (FunctionIdentifier _ _ s) = s

-- | A declaration combines Erlang's attributes (e.g., -import directive)
-- and declarations (e.g., functions)
data Declaration = Import ModuleName [FunctionIdentifier] Span  -- ^ -import(...)
                 | Export [FunctionIdentifier] Span             -- ^ -export(...)
                 | Function FunctionIdentifier [Clause] Span    -- ^ function definition
                 | ModuleDecl Identifier Span     -- ^ -module(...)
                 | File String Integer Span       -- ^ -file(FILE, LINE)
                 | Record Identifier [Field] Span   -- ^ -record(Identifier, {Field ...})
                 | Wild  String Span              -- ^ a 'wild' attribute, not parsed further
                 deriving (Eq, Ord, Show)

instance SpanOf Declaration where
  spanOf (Import _ _ s) = s
  spanOf (Export _ s) = s
  spanOf (Function _ _ s) = s
  spanOf (ModuleDecl _ s) = s
  spanOf (File _ _ s) = s
  spanOf (Record _ _ s) = s
  spanOf (Wild _ s) = s

-- |  A field from a record type.
-- A field must contain a name (which is an atom), and an optional default value,
-- the optional types are ignored.
data Field = Field Identifier (Maybe Expr) Span
           deriving (Eq, Ord, Show)

-- | Atomic literals
data Literal = AtomLit  String  Span
             | CharLit  Char    Span
             | FloatLit Float   Span
             | IntLit   Integer Span
             | StrLit   String  Span
             | NilLit   Span
             deriving (Eq, Ord, Show)

instance SpanOf Literal where
  spanOf (AtomLit _ s) = s
  spanOf (CharLit _ s) = s
  spanOf (FloatLit _ s) = s
  spanOf (IntLit _ s) = s
  spanOf (StrLit _ s) = s
  spanOf (NilLit s)   = s

-- | Patterns, used in function heads and bindings
data Pattern = AtomicPat Literal
             | VariablePat Identifier
             | CompoundPat Pattern Pattern
             | ConsPat Pattern Pattern
             deriving (Eq, Ord, Show)

-- | Expressions. Currently not all Erlang expressions
--  are supported, they are just omitted from the AST.
--
--  If the compiler (from 'Syntax.Erlang.Compiler') encouters
--  these unsupported expressions anyway, an error is reported.
data Expr = Atomic Literal
          | Block [Expr] Span
          | Case  Expr [Clause] Span
          | Catch Expr Span
          | Call  Expr [Expr] Span
          | If [Clause] Span
          | Match Pattern Expr Bool Span                -- ^  Pattern = Expr
          | Receive [Clause] (Maybe (Expr, Body)) Span  -- ^ receive { clause* } after expr
          | Tuple [Expr] Span
          | Cons Expr Expr Span
          | MapLiteral [(Identifier, Expr)] Span        -- ^ #{ (field = expr)* }
          | MapUpdate Expr [(Identifier, Expr)] Span    -- ^ expr# { (field = expr)* }
          | Var Identifier
          | ModVar ModuleName Identifier
          deriving (Eq, Ord, Show)

instance SpanOf Expr where
  spanOf (Atomic l) = spanOf l
  spanOf (Block _ s) = s
  spanOf (Case _ _ s) = s
  spanOf (Catch _ s) = s
  spanOf (Call _ _ s) = s
  spanOf (If _ s) = s
  spanOf (Match _ _ _ s) = s
  spanOf (Receive _ _ s) = s
  spanOf (Tuple _ s) = s
  spanOf (Cons _ _ s) = s
  spanOf (MapLiteral _ s) = s
  spanOf (MapUpdate _ _ s) = s
  spanOf (Var i) = spanOf i
  spanOf (ModVar _ i) = spanOf i


-- | A clause in a pattern match expression
data Clause = SimpleClause [Pattern] -- ^ the pattern of the function head
                           [Body]    -- ^ possible side conditions
                           Body      -- ^ the body of the function when the head matches and the side-conditions pass
            deriving (Eq, Ord, Show)

-- | Alias for the contents of a function declaration
data Function = Fn FunctionIdentifier [Clause] Span
             deriving (Ord, Eq, Show)


-- | An Erlang module alongside some information found in its declarations
data ModuleInfo = ModuleInfo {
                      exports :: [FunctionIdentifier],
                      imports :: [QualifiedIdentifier],
                      unqualifiedImports :: [(ModuleName, FunctionIdentifier)],
                      erlangModule :: Module,
                      moduleName :: String
                 }
                deriving (Ord, Eq, Show)

-- | List of loaded Erlang modules
newtype Modules = Modules { allModules :: Map String ModuleInfo }
                deriving (Ord, Eq, Show)

-- | A dependency graph of loaded Erlang modules
newtype ModuleDependencies = ModuleDependencies { moduleDependencies :: Map String (Set String) }
                          deriving (Ord, Eq, Show)

-- | Creates an empty dependency graph
emptyDependencyGraph :: ModuleDependencies
emptyDependencyGraph = ModuleDependencies Map.empty

-- | Add a dependency to the dependency graph from the first argument to the second
addDependency :: String -> String -> ModuleDependencies -> ModuleDependencies
addDependency from to = ModuleDependencies . Map.insertWith Set.union from (Set.singleton to) . moduleDependencies

-- | Returns a list of identifiers declared at the top-level
topLevelIdentifiers :: Module -> [FunctionIdentifier]
topLevelIdentifiers = mapMaybe visitDecl . moduleDeclarations
  where visitDecl :: Declaration -> Maybe FunctionIdentifier
        visitDecl (Function ident _ _) = Just ident
        visitDecl _ = Nothing


module Syntax.Erlang.AST where

import Syntax.Span

data Atom = Atom String Span
          deriving (Eq, Ord, Show)

-- | A function name with its arity
data Function = Function Atom Integer Span   
              deriving (Eq, Ord, Show)

-- | An attribute in Core Erlang 
-- eg. -myattribute(data)
data Attribute = Attribute Atom Lit Span  
               deriving (Eq, Ord, Show)

-- | A Core Erlang literal
data Lit

-- | An annotated Core Erlang node
data Ann a = Ann a (Maybe Annotation)

-- | Annotations are arbitrary Core Erlang literals 
-- without any semantics attached to them.
type Annotation = Lit

-- | A Core Erlang module
data Module = Module {
      moduleName :: Atom,
      moduleExports :: [Function], 
      moduleAttributes :: [Attribute],
      moduleDefinitions :: [FunDef],
      moduleSpan :: Span,
   } deriving (Eq, Ord, Show)

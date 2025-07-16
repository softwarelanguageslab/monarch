{-# LANGUAGE LambdaCase #-}
-- | Resolves overloaded function calls (i.e., when calling foo(1, 2, 3), replaces it with foo/3(1,2,3)
module Syntax.Erlang.Overloader where

import Data.Map (Map)
import qualified Data.Map as Map
import Syntax.Erlang.AST

-- | Overload a single expression
overloadExpr :: Expr -> Expr
overloadExpr = \case Block es s -> Block (overloadBdy es) s
                     Case expr clauses s -> Case (overloadExpr expr)
                                                 (overloadClauses clauses)
                                                 s

                     Catch ex s -> Catch (overloadExpr ex) s
                     Call {} -> error "todo: important case"
                     Match {} -> undefined
                     Receive {} -> undefined
                     Tuple {} -> undefined
                     Cons car cdr s -> Cons (overloadExpr car)
                                            (overloadExpr cdr)
                                            s
                     MapLiteral {} -> undefined
                     MapUpdate {} -> undefined
                     Let {} -> undefined
                     i -> i
                                       
-- | Overload a sequence of statements                  
overloadBdy :: Body -> Body
overloadBdy = map overloadExpr

overloadClause :: Clause -> Clause
overloadClause = undefined

overloadClauses :: [Clause] -> [Clause]
overloadClauses = undefined

overloadDecl :: Declaration -> Declaration
overloadDecl = undefined

overloadModule :: ModuleInfo -> ModuleInfo
overloadModule modInfo = modInfo {
                  erlangModule = Module $ map overloadDecl $ moduleDeclarations $ erlangModule modInfo
               } 

overloadModules :: Modules -> Modules
overloadModules = Modules . Map.map overloadModule . allModules

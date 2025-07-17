{-# LANGUAGE LambdaCase #-}
-- | Resolves overloaded function calls (i.e., when calling foo(1, 2, 3), replaces it with foo/3(1,2,3)
module Syntax.Erlang.Overloader where

import Data.Map (Map)
import qualified Data.Map as Map
import Syntax.Erlang.AST
import Data.Bifunctor

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
                     Tuple es s -> Tuple (map overloadExpr es) s
                     Cons car cdr s -> Cons (overloadExpr car)
                                            (overloadExpr cdr)
                                            s
                     MapLiteral {} -> undefined
                     MapUpdate {} -> undefined
                     Let bds bdy s -> Let (map (second overloadExpr) bds) (overloadBdy bdy) s
                     i -> i
                                       
-- | Overload a sequence of statements                  
overloadBdy :: Body -> Body
overloadBdy = map overloadExpr

overloadClause :: Clause -> Clause
overloadClause (SimpleClause pats side bdy) = SimpleClause pats (map overloadBdy side) (overloadBdy bdy)

overloadClauses :: [Clause] -> [Clause]
overloadClauses = map overloadClause

overloadDecl :: Declaration -> Declaration
overloadDecl = undefined

overloadModule :: ModuleInfo -> ModuleInfo
overloadModule modInfo = modInfo {
                  erlangModule = Module $ map overloadDecl $ moduleDeclarations $ erlangModule modInfo
               } 

overloadModules :: Modules -> Modules
overloadModules = Modules . Map.map overloadModule . allModules

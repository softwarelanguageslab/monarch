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
                     Call operator operands s ->
                       case operator of
                          Var ide _ -> Call (Var ide (Just (length operands))) (map overloadExpr operands) s
                          ModVar modName ide _ -> Call (ModVar modName ide (Just (length operands))) (map overloadExpr operands) s
                          e -> error $ "invalid type of function application, expected variable reference but got " ++ show e
                     Match pat expr b s -> Match (overloadPat pat) (overloadExpr expr) b s
                     Receive clauses timeout s -> Receive (overloadClauses clauses)
                                                          (fmap (bimap overloadExpr overloadBdy) timeout)
                                                          s
                                                           
                     Tuple es s -> Tuple (map overloadExpr es) s
                     Cons car cdr s -> Cons (overloadExpr car)
                                            (overloadExpr cdr)
                                            s
                     MapLiteral bds s   -> MapLiteral (map (second overloadExpr) bds) s
                     MapUpdate ex bds s -> MapUpdate (overloadExpr ex)
                                                     (map (second overloadExpr) bds)
                                                     s  
                     Let bds bdy s -> Let (map (second overloadExpr) bds) (overloadBdy bdy) s
                     i -> i

-- | Overload a pattern
overloadPat :: Pattern -> Pattern
overloadPat = id -- TODO: check if patterns can contain function calls
                                       
-- | Overload a sequence of statements                  
overloadBdy :: Body -> Body
overloadBdy = map overloadExpr

-- | Overload a single clause
overloadClause :: Clause -> Clause
overloadClause (SimpleClause pats side bdy) =
  SimpleClause (map overloadPat pats) (map overloadBdy side) (overloadBdy bdy)

-- | Overload a list of clauses
overloadClauses :: [Clause] -> [Clause]
overloadClauses = map overloadClause

-- | Overload the expressions in a declaration
overloadDecl :: Declaration -> Declaration
overloadDecl (Function ident clauses s)  = Function ident (overloadClauses clauses) s
overloadDecl d = d

-- | Overload the expressions in a module
overloadModule :: ModuleInfo -> ModuleInfo
overloadModule modInfo = modInfo {
                  erlangModule = Module $ map overloadDecl $ moduleDeclarations $ erlangModule modInfo
               } 

-- | Overload the expressions in a list of modules
overloadModules :: Modules -> Modules
overloadModules = Modules . Map.map overloadModule . allModules

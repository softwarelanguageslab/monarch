{-# LANGUAGE ConstraintKinds, FlexibleContexts, TemplateHaskell #-}
{-# LANGUAGE LambdaCase #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
-- | Qualify all local variables references and definitions
-- with the current module's name
module Syntax.Erlang.Qualifier(qualifyModules) where

import Control.Monad.Reader
import Control.Lens
import Data.Set (Set)
import qualified Data.Set as Set
import qualified Data.Map as Map
import Syntax.Erlang.AST
import qualified Syntax.Ide as Ide

-------------------------------------------------------------
-- MonadQualify
-------------------------------------------------------------

data QualifyEnvironment = QualifyEnvironment {
    currentModule :: ModuleInfo,
    _locals       :: Set (String, Int)
  } deriving (Ord, Eq, Show)


$(makeLenses ''QualifyEnvironment)

-- | The monad the qualifier runs in keeps track of the the current name of the module
type MonadQualify m = (MonadReader QualifyEnvironment m)

-- | Implement `MonadQualify` using a reader monad
runMonadQualify :: ModuleInfo -> ReaderT QualifyEnvironment m a -> m a
runMonadQualify modul = flip runReaderT (QualifyEnvironment modul Set.empty)


-- | Add a local binding to the lexical scope 
withBinding :: MonadQualify m => String -> Int -> m a -> m a
withBinding s i = local (over locals (Set.insert (s,i)))

-- | Add multiple local bindings to the lexical scope
withBindings :: (Foldable t, MonadQualify m) => t (String, Int) ->  m a -> m a
withBindings bindings = local
  (over locals (Set.union (foldr (\e b -> Set.union b (Set.singleton e)) Set.empty bindings)))

-- | Check whether the given variable is part of local variables
isLocal :: MonadQualify m => String -> Int -> m Bool
isLocal nam ari = asks (Set.member (nam, ari) . _locals)

-------------------------------------------------------------
-- Utilities
-------------------------------------------------------------

-- | Extract the set of variables within a pattern
patternVariables :: Pattern -> Set String
patternVariables = \case (AtomicPat _) -> Set.empty
                         (VariablePat ide) -> Set.singleton $ Ide.name ide
                         (CompoundPat pat1 pat2) ->
                            Set.union (patternVariables pat1)
                                      (patternVariables pat2)
                         (ConsPat pat1 pat2) ->
                            Set.union (patternVariables pat1)
                                      (patternVariables pat2)



-------------------------------------------------------------
-- Qualification of program elements
-------------------------------------------------------------

-- | Qualify an expression
qualifyExpression :: MonadQualify m => Expr -> m Expr
qualifyExpression = \case Block es s ->
                              Block <$> mapM qualifyExpression es <*> pure s
                          Case expr clauses s ->
                              Case <$> qualifyExpression expr <*> mapM qualifyClause clauses <*> pure s
                          Catch expr s ->
                              Catch <$> qualifyExpression expr <*> pure s
                          Call expr exprs s ->
                              Call <$> qualifyExpression expr <*> mapM qualifyExpression exprs <*> pure s
                          If clauses s ->
                              If <$> mapM qualifyClause clauses <*> pure s
                          Match {}  -> error "match expression should be eliminated in a previous phase"
                          Receive clauses timeout s ->
                             Receive <$> mapM qualifyClause clauses <*> maybe (return Nothing) qualify timeout <*> pure s
                          Tuple exs s ->
                             Tuple <$> mapM qualifyExpression exs <*> pure s
                          Cons car cdr s ->
                             Cons <$> qualifyExpression car <*> qualifyExpression cdr <*> pure s
                          MapLiteral bds s ->
                             MapLiteral <$> mapM (\(ide, ex) -> (ide,) <$> qualifyExpression ex) bds <*> pure s
                          MapUpdate expr bds s ->
                             MapUpdate <$> qualifyExpression expr <*> mapM (\(ide, ex) -> (ide,) <$> qualifyExpression ex) bds <*> pure s
                          Var _ide ->
                             error "todo: most important case"
                          v@ModVar {} -> return v
                          l@Atomic {} -> return l
    where qualify (expr, bdy) = Just <$> liftA2 (,) (qualifyExpression expr) (qualifyBody bdy)

-- | Qualify the contents of a body
qualifyBody :: MonadQualify m => Body -> m Body
qualifyBody = mapM qualifyExpression

-- | Qualify a clause
qualifyClause :: MonadQualify m => Clause -> m Clause
qualifyClause (SimpleClause pats sides bdy) = withBindings vars' $ SimpleClause pats <$> mapM qualifyBody sides <*> qualifyBody bdy
  where vars' = Set.map (,0) $ foldMap patternVariables pats

-- | Qualify a single declaration
qualifyDeclaration :: MonadQualify m => Declaration -> m Declaration
qualifyDeclaration (Function ide clauses s) = Function ide <$> mapM qualifyClause clauses <*> pure s
qualifyDeclaration decl = return decl

-- | Qualify a single module
qualifyModule :: ModuleInfo -> ModuleInfo
qualifyModule modInfo = modInfo {
          erlangModule = runIdentity $ runMonadQualify modInfo $ fmap Module $ mapM qualifyDeclaration $ moduleDeclarations mod'
        }
  where mod' = erlangModule modInfo

-- | Qualify a system of modules
qualifyModules :: Modules -> Modules
qualifyModules = Modules . Map.map qualifyModule . allModules



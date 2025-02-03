{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeSynonymInstances, FlexibleInstances, TypeOperators #-}
{-# LANGUAGE Strict #-}
-- | Language semantics, formulated using the generic machine interface, but 
-- fixes the type of values being used.
module ASE.Semantics where

import ASE.Syntax
import ASE.Machine
import ASE.Domain.SymbolicVariable
import Analysis.Monad.Environment (EnvM(lookupEnv, getEnv, withExtendedEnv, withEnv))
import Analysis.Monad (StoreM(lookupAdr, writeAdr), StoreM' (putStore), withCtx, getCtx, currentStore)
import Analysis.SimpleActor.Semantics (injectLit)
import Analysis.Monad.Allocation (AllocM(alloc))
import qualified Analysis.Scheme.Primitives as Primitives
import Control.Monad (ap)
import Control.Monad.Join
import Domain.Scheme.Class (SchemeDomain(injectClo, withProc))
import Domain.SimpleActor (ActorValue')
import Symbolic.AST (Proposition(Variable), conjunction, Formula (Atomic), isSat, emptyPC)
import Domain.Symbolic.Class (SymbolicValue(combine, assertFalse), symbolic, Abstract)
import Domain.Symbolic (SymbolicVal(SymbolicVal), SymbolicValue (assertTrue))
import RIO hiding (mzero)
import qualified RIO.Set as Set
import Syntax.Span (spanOf)
import Analysis.Environment (Environment(extends))
import Analysis.Symbolic.Monad (extendPc, getPc, putPc)
import qualified Symbolic.AST as Symbolic
import Solver (FormulaSolver (solve))
import qualified Domain.Class as Domain
import qualified Domain.Scheme as Scheme
import qualified Symbolic.AST
import qualified RIO.Map as Map
import qualified Lattice.Class as Lat
import qualified Solver
import System.IO (stdout)


------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type V = ActorValue' [Span] VAdr PAdr CAdr SAdr SymbolicVariable
type K = [Span]
type MachineM m = (MonadIO m, MonadMachine K V m)

instance (v ~ Abstract V) => InputFrom v where
   inputValue i = cases !! (i `mod` length cases)
      where cases = [Domain.inject (toInteger i)]

------------------------------------------------------------
-- Solving for the model
------------------------------------------------------------

-- | Convert an SMT model to a ASE model
convertModel :: Symbolic.Model SymbolicVariable -> Model V
convertModel = Model . Map.map (Lat.joins . Set.map mapValue) . Symbolic.getModel
   where mapValue (Symbolic.Num n) = Domain.inject n
         mapValue (Symbolic.Rea r) = Domain.inject r
         mapValue (Symbolic.Boo b) = Domain.inject b
         mapValue (Symbolic.Cha c) = Domain.inject c
         mapValue (Symbolic.Sym a) = Scheme.symbol a

-- | Compute an assignment for the model (if one is available)
computeModel :: (MonadModel SymbolicVariable V m, FormulaSolver SymbolicVariable m)
             => CountMap SymbolicVariable
             -> Formula SymbolicVariable
             -> m (Maybe (Model V))
computeModel c pc = do
      result <- Solver.solve (getCountMap c) pc
      if isSat result then
         Just . convertModel <$> Solver.getModel @SymbolicVariable (getCountMap c) pc
      else return Nothing

------------------------------------------------------------
-- Semantics
------------------------------------------------------------

-- | Apply a primitive function
applyPrim :: MachineM m => [V] -> Exp -> String -> m (Ctrl V K)
applyPrim vs e nam = maybe mzero (fmap Ap) $ Primitives.run <$> Map.lookup nam Primitives.primitivesByName <*> pure e <*> pure vs

-- | Apply a user-defined closure
applyClo :: MachineM m => [V] -> Exp -> (Exp, Env K) -> m (Ctrl V K)
applyClo ags e (Lam xs bdy _, ρ) = do
   ctx' <- getCtx >>= pushCtx (spanOf e)
   withCtx (const ctx') $ do
      ads <- mapM (alloc . spanOf) xs
      let prs = map name xs
      let ρ' = extends (zip prs ads) ρ
      mapM_ (uncurry writeAdr) (zip ads ags)
      return (Ev bdy ρ')


-- | Apply the given function using the given operands
apply :: MachineM m => V -> [V] -> Exp -> m (Ctrl V K)
apply f operands e = withProc (either (applyPrim operands e) (applyClo operands e)) f

-- | Evaluate a `letrec` expression, it assumes that the environment 
-- has already been extended with the necessary bindings
evalLetrec  :: MachineM m => [VAdr K] -> [Exp] -> Exp -> m (Ctrl V K)
evalLetrec [] [] bdy = Ev bdy <$> getEnv
evalLetrec ads (exp:exs) bdy = do
   kadr <- alloc (spanOf exp)
   --liftIO . (\s -> putStr $ "{" ++ s ++ "}") . show . Map.size =<<  currentStore @(Map (KAdr K) (Set (KKont K))) @(KAdr K) @(Set (KKont K))
   getEnv >>= (\env -> ev exp env kadr (LetK ads exs bdy env))

-- | Evaluate an expression atomically
atomicEval :: MachineM m => Exp -> m V
atomicEval (Literal l _)   = return $ injectLit l
atomicEval (Var (Ide x _)) = lookupEnv x >>= lookupAdr
atomicEval lam@(Lam {})    = getEnv <&> injectClo . (lam,)
atomicEval exp             = error $ "expression " ++ show exp ++ " is not an atomic expression"

-- | Evaluation part of the @step@ping function, dispatches
-- directly over the expressions in @Exp@.
stepEval :: MachineM m => Exp -> m (Ctrl V K)
stepEval e
   | isAtomic e = Ap <$> atomicEval e
stepEval (Ite cnd csq alt s) = do
   --liftIO (putStr "{IF}")
   vcnd <- atomicEval cnd
   αf <- alloc s
   mjoinMap (\pc -> do
      count <- getCounts
      cond (pure vcnd)
         (  extendPc (assertTrue vcnd)
         >> pushF αf (Branch (Set.singleton (conjunction (Atomic $ symbolic $ assertFalse vcnd) pc)) count)
         >> getEnv <&> Ev csq )
         (  extendPc (assertFalse vcnd)
         >> pushF αf (Branch (Set.singleton (conjunction (Atomic $ symbolic $ assertTrue vcnd) pc)) count)
         >> getEnv <&> Ev alt) ) =<< getPc
stepEval (Input s) = do
   -- liftIO (putStr "{IN}")
   sym <- allocSym s
   Ap . (`combine` (SymbolicVal $ Variable sym)) <$> lookupModel sym
stepEval app@(App operator operands _) = do
   operator' <- atomicEval operator
   operands' <- mapM atomicEval operands
   apply operator' operands' app
stepEval (Letrec bds bdy _) = do
   ads <- mapM (alloc . spanOf . fst) bds
   ρ'  <- extends (zip (map (name . fst) bds) ads) <$> getEnv
   withEnv (const ρ') $ evalLetrec ads (map snd bds) bdy
stepEval (Blame _ _) = mzero
stepEval e = error $ "Expression " ++ show e ++ " is not supported by this interpreter"

-- | Apply the given continuation
applyContinuation :: MachineM m => V -> KFrame K -> m (Ctrl V K)
applyContinuation v =
   \case (LetK (adr:ads) exs bdy ρ) -> writeAdr adr v >> withEnv (const ρ) (evalLetrec ads exs bdy)

-- | Apply the current continuation
stepApply :: MachineM m => V -> m (Ctrl V K)
stepApply = popK . applyContinuation

-- | Restart the machine with the appropriate assignments 
-- in the model so that the machine explores the path associated 
-- with the path constraint in the failure continuation.
restart :: MachineM m => m (Ctrl V K)
restart = popF selectContinuation
   where selectContinuation (Branch pc cnt) = mjoinMap (maybe mzero (restartUsingModel pc) <=< computeModel cnt) pc
         restartUsingModel pc model = do
            -- add the model to the next execution
            putModel (getModel model)
            -- change the model context of the current state
            putCtx $ removeContextPC pc
            -- restart the execution ...
            cfg <- getConfiguration
            -- ... by resetting the store
            putStore @(Map (VAdr K) V) (σ0 cfg)
            -- ... and resetting the continuation store
            putStore @(Map (KAdr K) (Set (KKont K))) @(KAdr K) @(Set (KKont K)) Map.empty
            -- ... and resetting the path condition
            putPc emptyPC
            -- ... and by evaluating the initial program expression
            return (Ev (e0 cfg) (ρ0 cfg))

-- | Let the semantics make a single step, 
-- returns @Ctrl v@ values that denote 
-- the next instruction for the machine.
--
-- If the machine halts it returns @mzero@ denoting 
-- the empty computation so that no successor states are generated.
step :: MachineM m => Ctrl V K -> m (Ctrl V K)
step (Ap v) = liftA2 (,) topAddress topFailAddress
    >>= (\case (Hlt, FHlt) -> mzero         -- machine has no continuations, it has reached a halting state 
               (Hlt, top)  -> restart       -- machine has reached the end of the program but still needs to restart using the failure continuation
               (k, _)      -> stepApply v   -- apply the continuation
        )
step (Ev e ρ) =  withEnv (const ρ) (stepEval e)

------------------------------------------------------------
-- Optimisations
------------------------------------------------------------

-- | Same as producing an @Ev@ state but checks whether the expression 
-- can be evaluated in a single step, and if so prevents a continuation 
-- from being pushed on the continuation stack and applies the continuation
-- with the evaluated value instead.
ev :: MachineM m => Exp -> Env K -> KAdr K -> KFrame K -> m (Ctrl V K)
ev e ρ α κ
      | isAtomic e = withEnv (const ρ) $ (`applyContinuation` κ) =<< atomicEval e
      | otherwise = case e of
                        -- The reason that we select based on the type of expression 
                        -- is to ensure that no redundant work is performed. For instance, 
                        -- an @if@ expression will never result in a value in a single 
                        -- step, as such we don't pass such expressions to "stepEval".
                        -- 
                        -- However, conceptually this is equivalent to:
                        -- withEnv (const ρ) (stepEval e) >>= (\case (Ap v) -> applyContinuation v κ
                        --                                           _ -> pushK α κ >> return (Ev e ρ))
                        Input _   -> withEnv (const ρ) (stepEval e) >>= stepEvalInline
                        App {}    -> withEnv (const ρ) (stepEval e) >>= stepEvalInline
                        _ -> pushK α κ >> return (Ev e ρ)
   where stepEvalInline (Ap v) = applyContinuation v κ
         stepEvalInline _ = pushK α κ >> return (Ev e ρ)


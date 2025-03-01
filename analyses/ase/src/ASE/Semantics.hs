{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE FlexibleInstances, TypeOperators #-}
{-# LANGUAGE Strict #-}
-- | Language semantics, formulated using the generic machine interface, but 
-- fixes the type of values being used.
module ASE.Semantics where

import ASE.Syntax
import ASE.Machine
import ASE.Monad
import ASE.PC
import ASE.Domain.SymbolicVariable hiding (PC)
import Analysis.Monad.Environment (EnvM(lookupEnv, getEnv, withExtendedEnv, withEnv))
import Analysis.Monad (StoreM(hasAdr, lookupAdr, writeAdr), StoreM' (putStore), withCtx, getCtx, currentStore)
import Analysis.SimpleActor.Semantics (injectLit)
import Analysis.Monad.Allocation (AllocM(alloc))
import qualified Analysis.Scheme.Primitives as Primitives
import Control.Monad (ap, when)
import Control.Monad.Join
import qualified Domain.Scheme.Class as Scheme
import Domain.Scheme.Class (SchemeDomain(injectClo, withProc))
import Domain.SimpleActor (ActorValue')
import Symbolic.AST (Proposition(Variable), conjunction, Formula (Atomic), isSat, emptyPC)
import Domain.Symbolic.Class (SymbolicValue(combine, assertFalse), symbolic, Abstract)
import Domain.Symbolic (SymbolicVal(SymbolicVal), SymbolicValue (assertTrue))
import RIO hiding (mzero, catch)
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
import Lattice.Class (TopLattice)
import qualified Lattice.Class as Lat
import qualified Solver
import System.IO (stdout)
import Syntax.FV
import ASE.Domain.SymbolicVariable (SymbolicCountMap)
import Domain (BoolDomain(isTrue), isFalse)
import Control.Monad.Escape (catch)
import Lattice.ConstantPropagationLattice

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type V = ActorValue' [Span] VAdr PAdr CAdr SAdr SymbolicVariable
type K = [Span]
type MachineM m = (MonadIO m, MonadMachine K V m)

instance (v ~ Abstract V) => InputFrom v where
   inputValue i = cases !! (i `mod` length cases)
      where cases = [Domain.inject (toInteger i)]

pushF :: MonadContinuationStack (FAdr K) FFrame m => FAdr K -> FFrame -> m ()
pushF = push

pushK :: MonadContinuationStack (KAdr K) (KFrame K) m => KAdr K -> KFrame K -> m ()
pushK = push

------------------------------------------------------------
-- Solving for the model
------------------------------------------------------------

-- | Convert a value to a top value if the set contains 
-- more than one value.
singletonOrTop :: (TopLattice v) => Set v -> v
singletonOrTop s
   | Set.size s == 1 = head $ Set.elems s
   | otherwise = Lat.top

-- | Convert an SMT model to a ASE model
convertModel :: Symbolic.Model SymbolicVariable -> Model V
-- XXX: we use `singletonOrTop` here for soundness, since the number of values 
-- returned from the model might not cover all possible values. In the future
-- this should be handled by the model solver itself, and should be made more 
-- precise. However, in this case, we "give up" if we notice that there are 
-- more than one possible value in the model.
-- In practice, we should be able to distinguinish at least possible types,
-- but this is currently not possible.
convertModel = Model . Map.map (singletonOrTop . Set.map mapValue) . Symbolic.getModel
   where mapValue :: Symbolic.Literal -> Abstract V
         mapValue (Symbolic.Num n) = Domain.inject n
         mapValue (Symbolic.Rea r) = Domain.inject r
         mapValue (Symbolic.Boo b) = Domain.inject b
         mapValue (Symbolic.Cha c) = Domain.inject c
         mapValue (Symbolic.Sym a) = Scheme.symbol a
         mapValue Symbolic.Nil     = Scheme.nil
         mapValue Symbolic.Pair    = Scheme.pptr PTAdr

-- | Replace the given set of under constrained variables with top values
replaceUnderconstrained :: (Ord a, TopLattice v) => Set a -> Map a v -> Map a v
replaceUnderconstrained = flip (Set.foldr (`Map.insert` Lat.top))

-- | Compute an assignment for the model (if one is available)
computeModel :: (MonadModel SymbolicVariable V m, FormulaSolver SymbolicVariable m)
             => PC SymbolicVariable
             -> m (Maybe (Model V))
computeModel pc = do
      result <- Solver.solve (countPC pc) (formulaPC pc)
      if isSat result then
         Just . Model . replaceUnderconstrained underconstrainedVariables . getModel .  convertModel <$> Solver.getModel @SymbolicVariable (countPC pc) (formulaPC pc)
      else return Nothing
   where underconstrainedVariables = (Map.keysSet (countPC pc) `Set.difference` Symbolic.strictVariables pc) `Set.union` underconstrainedPC pc

-- | Adapt the context of the variables in the model so that they include the given context
adaptModelCtx :: PC SymbolicVariable -> Model V -> Model V
adaptModelCtx pc = Model . adaptModel pc . getModel


------------------------------------------------------------
-- Semantics
------------------------------------------------------------

-- | Apply a primitive function
applyPrim :: MachineM m => [V] -> Exp -> String -> m (Ctrl V K)
applyPrim vs e nam = maybe mzero (fmap Ap) $ Primitives.run <$> Map.lookup nam Primitives.primitivesByName <*> pure e <*> pure vs

-- | Reallocate the address in the given environment by changing their contexts
-- to the given context (cf. k-cfa paradox)
reallocateEnv :: MachineM m => K -> Env K -> m (Env K)
reallocateEnv k = fmap Map.fromList . mapM realloc . Map.toList
   where realloc (nam, adr@(VAdr s _)) = do
            let adr' = VAdr s k
            lookupAdr adr >>= writeAdr adr'
            return (nam, adr')
         realloc bdn@(nam, PrimAdr s) = return bdn


-- | Apply a user-defined closure
applyClo :: MachineM m => [V] -> Exp -> (Exp, Env K) -> m (Ctrl V K)
applyClo ags e (lam@(Lam xs bdy _), ρ) = do
   -- Check if arity matches
   when (length xs /= length ags) $
      error $ "Closure at " ++ show (spanOf lam)
            ++ " called at " ++ show (spanOf e)
            ++ " called with " ++ show (length ags)
            ++ " but expected " ++ show (length xs)

   ctx' <- getCtx >>= pushCtx (spanOf e)
   withCtx (const ctx') $ do
      ads <- mapM (alloc . spanOf) xs
      let prs = map name xs
      ρ' <- extends (zip prs ads) <$> reallocateEnv ctx' (Map.restrictKeys ρ (fv bdy))
      mapM_ (uncurry writeAdr) (zip ads ags)
      adr <- Cll <$> alloc (spanOf e)
      push @(KAdr K) adr ReturnK
      return (NonAtomic bdy ρ')


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
atomicEval (Loc e s)       = return $ Scheme.symbol (show e ++ "@" ++ show s)
atomicEval (Trace e s)     = traceInfo =<< atomicEval e
   where traceInfo v = do
               ctx <- getCtx @_ @K
               liftIO $ putStrLn $ "TRACE[" ++ show s ++ "]" ++ show v ++ " @ " ++ show ctx

               pc <- snapshotPC
               return v
atomicEval exp             = error $ "expression " ++ show exp ++ " is not an atomic expression"

debugVisited :: (MonadIO m, MonadVisitedSet e m) => e -> m ()
debugVisited = isVisited @_ @_ @(CP Bool) >=> (liftIO . putStrLn . ("debugVisited: " ++) . show)

-- | Evaluation part of the @step@ping function, dispatches
-- directly over the expressions in @Exp@.
stepEval :: MachineM m => Exp -> m (Ctrl V K)
stepEval e
   | isAtomic e = Ap <$> atomicEval e
stepEval (Error _ _) = return Reset -- mzero -- TODO: make an actual state here
stepEval (Ite cnd csq alt _) = do
      --liftIO (putStr "{IF}")
      vcnd <- atomicEval cnd
      αf1 <- alloc (spanOf csq)
      αf2 <- alloc (spanOf alt)
      bt <- snapshotPC <&> removeContextPC' . simplifyPC . addConstraint (symbolic (assertFalse vcnd))
      bf <- snapshotPC <&> removeContextPC' . simplifyPC . addConstraint (symbolic (assertTrue vcnd))

      -- liftIO (putStr "T: ")
      -- liftIO (print bt)
      -- liftIO (putStr "F: ")
      -- liftIO (print bf)

      cond (pure vcnd)
         (  extendPc (assertTrue vcnd)
         >> condCP (isVisited bt) (return ()) (addVisited bt >> pushF αf1 (Branch bt))
         >> getEnv <&> Ev csq )
         (  extendPc (assertFalse vcnd)
         >> condCP (isVisited bf) (return ()) (addVisited bf >> pushF αf2 (Branch bf))
         >> getEnv <&> Ev alt )
stepEval (Fresh s) = do
   -- Same as `input` but associates `fresh` as the symbolic representation rather 
   -- than the generated variable.
   sym <- allocSym s
   Ap . (`combine` (SymbolicVal $ Symbolic.Fresh (Set.singleton sym))) <$> lookupModel sym
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
stepEval (Blame e s) = Blm <$> atomicEval e <*> pure s
-- Parallel execution of the given expressions
stepEval (Parallel es span) = mjoinMap (\e -> Ev e <$> getEnv) es
stepEval e = error $ "Expression " ++ show e ++ " is not supported by this interpreter"

-- | Apply the given continuation
applyContinuation :: MachineM m => V -> KFrame K -> m (Ctrl V K)
applyContinuation v =
   \case (LetK (adr:ads) exs bdy ρ) -> writeAdr adr v >> withEnv (const ρ) (evalLetrec ads exs bdy)
         ReturnK                    -> return (Return v)

-- | Apply the current continuation
stepApply :: MachineM m => V -> m (Ctrl V K)
stepApply = popExec @(KAdr K) . applyContinuation

-- | Restart the machine with the appropriate assignments 
-- in the model so that the machine explores the path associated 
-- with the path constraint in the failure continuation.
restart :: MachineM m => m (Ctrl V K)
restart = popExec @(FAdr K) selectContinuation
   where selectContinuation (Branch pc) = {- liftIO (putStrLn "Restart") >> -} (maybe (return Reset) (restartUsingModel pc) =<< computeModel pc)
         restartUsingModel pc model = do
            -- Compute the new context for the symbolic variables
            let modelCtx' = removeContextPC pc
            let model' = adaptModelCtx modelCtx' model
            -- add the model to the next execution
            putModel (getModel model')
            -- change the model context of the current state
            putCtx modelCtx'
            -- restart the execution ...
            cfg <- getConfiguration
            -- ... by resetting the store
            putStore @(Map (VAdr K) V) (σ0 cfg)
            -- ... and resetting the continuation store
            emptyStack @(KAdr K)
            -- ... and resetting the path condition
            resetPC
            -- ... and by evaluating the initial program expression
            return (NonAtomic (e0 cfg) (ρ0 cfg))

-- | Let the semantics make a single step, 
-- returns @Ctrl v@ values that denote 
-- the next instruction for the machine.
--
-- If the machine halts it returns @mzero@ denoting 
-- the empty computation so that no successor states are generated.
step' :: MachineM m => Ctrl V K -> m (Ctrl V K)
step' (Ap v) = liftA2 (,) (stackEmpty @(KAdr K)) (stackEmpty @(FAdr K))
    >>= (\case (True, True) -> return (Res v)        -- machine has no continuations, it has reached a halting state 
               (True, _)    -> mjoin (return (Res v))
                                     restart         -- machine has reached the end of the program but still needs to restart using the failure continuation
               (_, _)       -> stepApply v           -- apply the continuation
        )
step' (Ev e ρ)        = withEnv (const ρ) (stepEval e)
step' (NonAtomic e ρ) = withEnv (const ρ) (stepEval e)
step' (Return v)      = step' (Ap v)
step' (Blm _ _)       = return Reset
step' Reset           = ifM (stackEmpty @(FAdr K))  -- cannot reset if the stack is empty
                            mzero
                            restart
step' (Res _)         = return Reset

-- | Step until a call state has been discovered
stepAtomic :: MachineM m => Ctrl V K -> m (Ctrl V K)
stepAtomic ctrl =
      linkInStore @(KAdr K) (step' ctrl >>= loop) `catch` (\_ -> return Reset)
   where loop :: MachineM m => Ctrl V K -> m (Ctrl V K)
         loop ato@(NonAtomic {}) = return ato
         loop ret@(Return v)     = return (Ap v)
         loop blm@(Blm _ _)      = return blm
         loop res@(Res _)        = return res
         loop ctrl               = loop =<< step' ctrl

-- | Single (atomic) step of the machine
step :: MachineM m => Ctrl V K -> m (Ctrl V K)
step = stepAtomic

------------------------------------------------------------
-- Optimisations
------------------------------------------------------------

ev :: MachineM m => Exp -> Env K -> KAdr K -> KFrame K -> m (Ctrl V K)
ev expr env adr kont = push adr kont >> return (Ev expr env)

-- | Same as producing an @Ev@ state but checks whether the expression 
-- can be evaluated in a single step, and if so prevents a continuation 
-- from being pushed on the continuation stack and applies the continuation
-- with the evaluated value instead.
-- ev :: MachineM m => Exp -> Env K -> KAdr K -> KFrame K -> m (Ctrl V K)
-- ev e ρ α κ
--    | isAtomic e = withEnv (const  ρ) $ (`applyContinuation` κ) =<< atomicEval e
--       -- = withEnv (const ρ) $ stepEvalInline =<< stepEval e
--    | otherwise = case e of
--                      -- The reason that we select based on the type of expression 
--                      -- is to ensure that no redundant work is performed. For instance, 
--                      -- an @if@ expression will never result in a value in a single 
--                      -- step, as such we don't pass such expressions to "stepEval".
--                      -- 
--                      -- However, conceptually this is equivalent to:
--                      -- withEnv (const ρ) (stepEval e) >>= (\case (Ap v) -> applyContinuation v κ
--                      --                                           _ -> pushK α κ >> return (Ev e ρ))
--                      -- _  -> withEnv (const ρ) (stepEval e) >>= stepEvalInline
--                      Input _   -> withEnv (const ρ) (stepEval e) >>= stepEvalInline
--                      App {}    -> withEnv (const ρ) (stepEval e) >>= stepEvalInline
--                      _ -> push α κ >> return (Ev e ρ)
--    where stepEvalInline (Ap v) = applyContinuation v κ
--          stepEvalInline (Ev expr env) = ev expr env α κ
--          stepEvalInline ctrl = push α κ >> return ctrl

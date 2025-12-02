{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-unused-local-binds #-}
-- | ModConc operational small-step semantics
module Analysis.SimpleActor.Smallstep.ModConc where

import RIO
import Data.Kind
import Analysis.SimpleActor.Smallstep.StateSpace.Class (HasMicroState, HasMacroState, Env, Ctrl(..), ctrlL, topStoreL, kstoreL, pick, storeL)
import Analysis.SimpleActor.Smallstep.StateSpace.Effect
import Syntax.AST
import Domain.Actor (ActorDomain(..))
import Domain.Scheme.Class hiding (Env, Adr, Exp)
import qualified Domain.Scheme.Class as Scheme
import Domain.Class (Domain(inject))
import Domain.Core.BoolDomain.Class (isTrue, isFalse)
import qualified RIO.Map as Map
import qualified RIO.Set as Set
import Syntax.Span (spanOf)
import qualified RIO.HashMap as HashMap

-------------------------------------------------------------
-- Analysis configuration
-------------------------------------------------------------

-- | Type of addresses used for the given analysis configuration
type family Adr :: Type -> Type

-- | Type of values used for the given analysis configuration
type family Val :: Type -> Type

-- | Type of actor references used for the given analysis configuraiton
type Ref c = Span

-- | Type of mailboxes used for the given analysis configuration
type family Mai :: Type -> Type

-- | Auxilary function to uniformly apply a constraint to all parameters of
-- the analysis configuration
type ForAll (c :: Type -> Constraint) cfg = (c (Adr cfg), c (Val cfg), c (Mai cfg), c (Kont cfg))

-- | A configuration is "valid" if it satisfies these constraints
type IsConfiguration cfg =
  (ForAll Ord cfg,
   ForAll Eq cfg,
   ForAll Hashable cfg,
   ActorDomain (Val cfg),
   SchemeDomain (Val cfg),
   Scheme.Env (Val cfg) ~ Env (Adr cfg),
   Scheme.Adr (Val cfg) ~ Adr cfg,
   Scheme.Exp (Val cfg) ~ Exp)

-- | State constraints on using the analysis configuration for the
-- mod conc state "macro" and the small-step state "micro"
type MacroState c macro micro =
  (HasMacroState (Adr c) (Ref c) (Val c) (Kont c) (Mai c) macro micro,
   HasMicroState (Adr c) (Ref c) (Val c) (Kont c) (Mai c) micro,
   Ord macro,
   Ord micro,
   IsConfiguration c)

type MicroState c micro =
   (HasMicroState (Adr c) (Ref c) (Val c) (Kont c) (Mai c) micro,
    HasEffect micro,
    Allocator (Adr c),
    Ord micro,
    IsConfiguration c)

-------------------------------------------------------------
-- Address allocation
-------------------------------------------------------------

-- | Type class for allocating addresses
class Allocator adr where
  alloc :: Span -> adr

-------------------------------------------------------------
-- ModConc semantics
-------------------------------------------------------------

macroConc' :: forall c macro micro . MacroState c macro micro => macro -> Set macro
macroConc' state =
 let process = pick @_ @_ @micro state
 in undefined -- foldMap step process

-- | Runs the MacroConc analysis
macroConc :: forall c macro micro . MacroState c macro micro => Set macro -> Set macro
macroConc = undefined

-- | Takes a single intra-macro step
step' :: forall c state . (MicroState c state) => state -> Set state
step' state =
 case state ^. ctrlL of
  -- NOTE: if a "Wait" control state is passed to the step
  -- function it will be because the actor's mailbox has
  -- a new message.
   Wait expr ρ -> eval ρ expr state
   Eval expr ρ -> eval ρ expr state
   Next vlu   ->
    let konts = fromMaybe Set.empty $ Map.lookup (state ^. topStoreL) (state ^. kstoreL)
    in foldMap (\kont -> applyCnt vlu kont state) konts

-- | Takes single steps until a disallowed state is found. Such as state is found in these case:
-- - A message send occured for the second times (a 'Snd' effect is emitted while there was already one iun the previous state)
-- - A message receive occurs (a 'Rcv' effect is emitted)
--
-- In both cases, the new state is discarded, and only the previous one is kept.
--
step :: forall c state . (MicroState c state) => Set state -> Set state
step = undefined


-------------------------------------------------------------
-- Continuations
-------------------------------------------------------------

data Frm c =  ContinueOperator [Exp] Span (Env (Adr c))
            | ContinueOperands (Val c) [Val c] [Exp] Span (Env (Adr c))
            | ContinueSpawn Span
            | ContinueBinding [Val c] [Exp] Exp (Env (Adr c))
            | ContinueIte Exp Exp (Env (Adr c))
            | ContinuePairCar Exp Span (Env (Adr c))
            | ContinuePairCdr (Val c) Span
            | ContinueMatch [(Pat, Exp)] Span (Env (Adr c))
            | ContinueBegin [Exp] Span (Env (Adr c))

data Kont c = Kont (Frm c) (Adr c)

-- | Push a continuation frame by allocating an address and storing it
pushK :: (MicroState c state) => Span -> Frm c -> state -> state
pushK sp frm state =
  let kadr = alloc sp
      kont = Kont frm kadr
      store' = Map.insertWith Set.union kadr (Set.singleton kont) (state ^. kstoreL)
  in state & kstoreL .~ store' & topStoreL .~ kadr

-- | Applies the given continuation
applyCnt :: (MicroState c state) => Val c -> Kont c -> state -> Set state
applyCnt vlu (Kont frm kadr) state =
  case frm of
    ContinueOperator operands sp ρ ->
      -- Evaluated the operator, now evaluate operands
      case operands of
        [] -> apply vlu [] sp state
        (e:es) ->
          let state' = pushK sp (ContinueOperands vlu [] es sp ρ) state
          in Set.singleton $ state' & ctrlL .~ Eval e ρ

    ContinueOperands operator evaluated remaining sp ρ ->
      -- Continue evaluating operands
      let operands = reverse (vlu : evaluated)
      in case remaining of
        [] -> apply operator operands sp state
        (e:es) ->
          let state' = pushK sp (ContinueOperands operator (vlu : evaluated) es sp ρ) state
          in Set.singleton $ state' & ctrlL .~ Eval e ρ

    ContinueSpawn sp ->
      -- Spawning completed, create new actor
      undefined

    ContinueBinding evaluated remaining body ρ ->
      -- Continue evaluating letrec bindings
      case remaining of
        [] ->
          -- All bindings evaluated, now evaluate body in extended environment
          Set.singleton $ state & ctrlL .~ Eval body ρ & topStoreL .~ kadr
        (e:es) ->
          let state' = pushK sp (ContinueBinding (vlu : evaluated) es body ρ) state
              sp = spanOf e
          in Set.singleton $ state' & ctrlL .~ Eval e ρ & topStoreL .~ kadr

    ContinueIte csq alt ρ ->
      -- Condition evaluated, branch based on value
      -- Use isTrue and isFalse to determine which branches to take
      let trueBranch = [state & ctrlL .~ Eval csq ρ & topStoreL .~ kadr | isTrue vlu]
          falseBranch = [state & ctrlL .~ Eval alt ρ & topStoreL .~ kadr | isFalse vlu]
      in Set.fromList (trueBranch ++ falseBranch)

    ContinuePairCar cdr sp ρ ->
      -- Evaluated car, now evaluate cdr
      let state' = pushK sp (ContinuePairCdr vlu sp) state
      in Set.singleton $ state' & ctrlL .~ Eval cdr ρ

    ContinuePairCdr car sp ->
      -- Both car and cdr evaluated, create pair
      undefined -- TODO: allocate pair address and store pair in heap

    ContinueMatch clauses sp ρ ->
      -- Scrutinee evaluated, try to match against clauses
      undefined -- TODO: implement pattern matching

    ContinueBegin remaining sp ρ ->
      -- Continue evaluating expressions in sequence
      case remaining of
        [] -> Set.singleton $ state & ctrlL .~ Next vlu & topStoreL .~ kadr
        (e:es) ->
          let state' = pushK sp (ContinueBegin es sp ρ) state
          in Set.singleton $ state' & ctrlL .~ Eval e ρ

-- | Apply a function to arguments
apply :: (MicroState c state, SchemeDomain (Val c)) => Val c -> [Val c] -> Span -> state -> Set state
apply operator operands sp state =
  -- Try both closure application and primitive application
  let closureApps = Set.fromList [ applyClosure state clo | clo <- Set.toList (clos operator) ]
      primitiveApps = Set.fromList [ applyPrimitive state nam | nam <- Set.toList (prims operator) ]
  in closureApps `Set.union` primitiveApps
  where
    applyClosure st (lam@(Lam pars bdy _), ρ) =
      if length pars /= length operands
      then error $ "Arity mismatch at " ++ show sp
      else
        let adrs = map (alloc . spanOf) pars
            bindings = zip (map name pars) adrs
            ρ' = HashMap.fromList bindings `HashMap.union` ρ
            st' = foldr (\(adr, vlu) s -> s & storeL %~ HashMap.insert adr vlu) st (zip adrs operands)
        in st' & ctrlL .~ Eval bdy ρ'
    applyClosure _ _ = error "Invalid closure"

    applyPrimitive st primName =
      undefined -- TODO: implement primitive application

-------------------------------------------------------------
-- Evaluation functions
-------------------------------------------------------------

-- | Inject a literal into the value domain
injectLit :: SchemeDomain v => Lit -> v
injectLit (Boolean b)    = inject b
injectLit (Symbol s)     = symbol s
injectLit (Num n)        = inject n
injectLit (Character c)  = inject c
injectLit (Real r)       = inject r
injectLit Nil            = nil
injectLit (String _)     = error "cannot inject a string"

eval :: (MicroState c state) => Env (Adr c) -> Exp -> state -> Set state
eval env expr state = case expr of
  -- Application: evaluate operator first
  App operator operands sp ->
    let state' = pushK sp (ContinueOperator operands sp env) state
    in Set.singleton $ state' & ctrlL .~ Eval operator env

  -- Qualified application: lookup in namespace for primitives
  AppQual namespace operator operands sp ->
    let primName = name namespace ++ ":" ++ name operator
        primVal = prim primName
        state' = pushK sp (ContinueOperator operands sp env) state
    in Set.singleton $ state' & ctrlL .~ Next primVal

  -- Spawn: evaluate the expression to get a closure, then spawn
  Spawn e sp ->
    let state' = pushK sp (ContinueSpawn sp) state
    in Set.singleton $ state' & ctrlL .~ Eval e env

  -- Letrec: allocate addresses for all bindings, extend environment, evaluate bindings
  Letrec bds bod sp ->
    let (ides, exps) = unzip bds
        adrs = map (alloc . spanOf) ides
        env' = HashMap.fromList (zip (map name ides) adrs) `HashMap.union` env
    in case exps of
         [] -> Set.singleton $ state & ctrlL .~ Eval bod env'
         (e:es) ->
           let state' = pushK sp (ContinueBinding [] es bod env') state
           in Set.singleton $ state' & ctrlL .~ Eval e env'

  -- Terminate: halt the current actor
  Terminate sp ->
    -- Emit a termination effect and halt
    Set.singleton $ state & ctrlL .~ Next unsp

  -- Self: return reference to current actor
  Self sp ->
    -- Return the current actor reference
    undefined -- TODO: need access to current actor reference from state

  -- Pair: evaluate both components
  Pair car cdr sp ->
    let state' = pushK sp (ContinuePairCar cdr sp env) state
    in Set.singleton $ state' & ctrlL .~ Eval car env

  -- Match: evaluate scrutinee, then match against clauses
  Match scrutinee clauses sp ->
    let state' = pushK sp (ContinueMatch clauses sp env) state
    in Set.singleton $ state' & ctrlL .~ Eval scrutinee env

  -- If-then-else: evaluate condition first
  Ite cnd csq alt sp ->
    let state' = pushK sp (ContinueIte csq alt env) state
    in Set.singleton $ state' & ctrlL .~ Eval cnd env

  -- Lambda: create closure value
  lam@Lam {} ->
    let clo = injectClo (lam, env)
    in Set.singleton $ state & ctrlL .~ Next clo

  -- Variable: lookup in environment and store
  Var (Ide x _) ->
    case HashMap.lookup x env of
      Just adr ->
        case HashMap.lookup adr (state ^. storeL) of
          Just vlu -> Set.singleton $ state & ctrlL .~ Next vlu
          Nothing -> error $ "Address not found in store: " ++ x
      Nothing -> error $ "Unbound variable: " ++ x

  -- Literal: inject into value domain
  Literal lit _ ->
    let vlu = injectLit lit
    in Set.singleton $ state & ctrlL .~ Next vlu

  -- Begin: sequence expressions
  Begin exs sp ->
    case exs of
      [] -> Set.singleton $ state & ctrlL .~ Next unsp
      [e] -> Set.singleton $ state & ctrlL .~ Eval e env
      (e:es) ->
        let state' = pushK sp (ContinueBegin es sp env) state
        in Set.singleton $ state' & ctrlL .~ Eval e env

  -- Error: raise an error
  Error msg sp ->
    -- TODO: implement error handling
    Set.singleton $ state & ctrlL .~ Next unsp

  -- Unsupported expressions
  e -> error $ "unsupported expression type " ++ show e


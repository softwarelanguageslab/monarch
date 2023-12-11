{-# LANGUAGE RankNTypes #-}

{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.Python.Semantics where

import Analysis.Python.Syntax
import qualified Analysis.Python.Syntax as Syntax

import Prelude hiding (break, lookup)
import Control.Monad (zipWithM)
import qualified Control.Monad
import Analysis.Monad (lookupEnv, withExtendedEnv, withEnv, getEnv, EnvM)
import Domain hiding (Dictionary)
import Control.Monad.Join
import Control.Monad.Error
import qualified Domain.Python.ClassDomain as O
import Data.Functor ((<&>))
import Data.Kind (Type)
import Data.Void
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set

type PyEnv = Map String VarAdr

type PyClo = ([PyPar], PyStm, PyEnv)
type PyPrm = forall m v . AnalysisM m v => [PyRef] -> PyLoc -> m PyRef

newtype VarAdr = VarAddr String
newtype ObjAdr = ObjAddr PyLoc

allocVar :: PyIde -> VarAdr
allocVar = VarAddr . ideName . lexIde

allocPtr :: PyLoc -> ObjAdr
allocPtr = ObjAddr

newtype PyRef = PyRef (Set ObjAdr)

data Cmp = MainCmp
         | CallCmp PyStm PyEnv
         | LoopCmp PyExp PyStm PyEnv

class (JoinLattice v,
       BoolDomain v)
       =>
       PyDomain v where
   none :: v
   injectBln :: Bool -> v
   injectBln = inject -- from Booldomain
   injectInt :: Integer -> v
   injectClo :: PyClo -> v
   call :: AnalysisM m v => v 
                         -> (PyClo -> m PyRef) 
                         -> (PyPrm -> m PyRef) -- -> [PyRef] -> PyLoc
                         -> m PyRef

class (Monad m, JoinLattice v) => StoreM m a v | m a -> v where
   extend :: a -> v -> m ()
   update :: a -> v -> m ()
   lookup :: a -> m v

class (Monad m,
       MonadJoin m,
       EnvM m VarAdr PyEnv,
       StoreM m VarAdr PyRef,
       StoreM m ObjAdr v,
       PyDomain v)
       =>
       AnalysisM m v | m -> v where
   returnWith :: PyRef -> m a
   continue :: m a
   break :: m a
   callCmp :: Cmp -> m PyRef 

-- | Throws an error that the operation must still be implemented
todo :: String -> a
todo = error . ("[TODO] NYI: " ++)

-- | Helpers 
ideNam :: PyIde -> String
ideNam = ideName . lexIde

deref :: AnalysisM m v => PyRef -> m v
deref (PyRef ads) = mjoins $ map lookup (Set.toList ads)

allocVal :: AnalysisM m v => PyLoc -> v -> m PyRef
allocVal loc val = extend adr val >> return (PyRef $ Set.singleton adr)
   where adr = allocPtr loc

-- | Execute a single statement
exec :: AnalysisM m v => PyStm -> m ()
exec (Assg _ lhs rhs)            = execAss lhs rhs
exec (Let _ vrs bdy)             = execLet vrs bdy
exec (Return _ exp loc)          = execRet exp loc
exec (Conditional _ brs els _ )  = execIff brs els
exec (StmtExp _ e _)             = execExp e
exec (Loop _ cnd bdy _)          = execWhi cnd bdy
exec (Seq _ sts)                 = execSeq sts
exec (Break _ _)                 = execBrk
exec (Continue _ _)              = execCnt
exec (NonLocal x _ _)            = absurd x          -- these can't occur in microPython
exec (Global x _ _)              = absurd x          -- these can't occur in microPython

execExp :: AnalysisM m v => PyExp -> m ()
execExp = Control.Monad.void . eval

execAss :: AnalysisM m v => PyLhs -> PyExp -> m ()
execAss lhs rhs = eval rhs >>= assignTo lhs
   where assignTo (IdePat ide) val     = do adr <- lookupEnv (ideNam ide)
                                            update adr val
         assignTo (Field e nam _) val  = todo "field assignment"        -- M.eval e >>= derefObjPtr (\adr -> updateAdr adr . O.set (string (ideName nam)) v)
         assignTo (ListPat _ _) val    = todo "list assignment"
         assignTo (TuplePat _ _) val   = todo "tuple assignment"

execIff :: AnalysisM m v => [(PyExp, PyStm)] -> PyStm -> m ()
execIff ((cnd,tru):grds) els = cond (eval cnd >>= deref) (exec tru) (execIff grds els)
execIff [] els = exec els

execSeq :: AnalysisM m v => [PyStm] -> m ()
execSeq = mapM_ exec

execLet :: AnalysisM m v => [PyIde] -> PyStm -> m ()
execLet vrs stm = withExtendedEnv (zip nms ads) (exec stm)
   where ads = map allocVar vrs
         nms = map (ideName . lexIde) vrs

execRet :: AnalysisM m v => Maybe PyExp -> PyLoc -> m ()
execRet (Just exp) _    = eval exp >>= returnWith
execRet Nothing loc     = allocVal loc none >>= returnWith  --TODO: single address for None

execBrk :: AnalysisM m v => m ()
execBrk = break

execCnt :: AnalysisM m v => m ()
execCnt = continue

execWhi :: AnalysisM m v => PyExp -> PyStm -> m ()
execWhi cnd bdy = getEnv >>= callCmp . LoopCmp cnd bdy >> return ()

eval :: AnalysisM m v => PyExp -> m PyRef
eval (Lam prs bdy loc _)   = evalLam prs bdy loc
eval (Var ide)             = evalVar ide
eval (Literal lit)         = evalLit lit
eval (Call fun arg loc)    = evalCll fun arg loc
eval (Read _ _ _)          = todo "read"

evalLam :: AnalysisM m v => [PyPar] -> PyStm -> PyLoc -> m PyRef
evalLam prs bdy loc = do env <- getEnv
                         let clo = (prs, bdy, env)
                         allocVal loc $ injectClo clo

evalVar :: AnalysisM m v => PyIde -> m PyRef
evalVar ide = lookupEnv (ideNam ide) >>= lookup

evalLit :: AnalysisM m v => PyLit -> m PyRef
evalLit (Bool bln loc)     = allocVal loc $ injectBln bln
evalLit (Integer int loc)  = allocVal loc $ injectInt int
evalLit (Real _ _)         = todo "real literal"
evalLit (String _ _)       = todo "string literal"
evalLit (Tuple _ _)        = todo "tuple literal"
evalLit (Dict _)           = todo "dictionary literal"

-- | Applies a procedure

evalCll :: AnalysisM m v => PyExp -> [PyArg] -> PyLoc -> m PyRef
evalCll opr opd loc = do fun <- eval opr >>= deref 
                         ags <- mapM evalArg opd
                         call fun (`applyClo` ags) (\prm -> applyPrm prm ags loc)
   where evalArg (PosArg arg _) = eval arg
         evalArg (KeyArg _ _ _) = todo "keyword arguments"

applyPrm :: AnalysisM m v => PyPrm -> [PyRef] -> PyLoc -> m PyRef
applyPrm prm = prm  

applyClo :: AnalysisM m v => PyClo -> [PyRef] -> m PyRef 
applyClo (prs, bdy, env) ags = 
   withEnv (const env) $ do 
      bindings <- zipWithM bindPar prs ags
      withExtendedEnv bindings $ do
         ext <- getEnv
         let cmp = CallCmp bdy ext
         callCmp cmp 

bindPar :: AnalysisM m v => PyPar -> PyRef -> m (String, VarAdr)
bindPar (Prm ide _) v = extend adr v >> return (ideNam ide, adr)
   where adr = allocVar ide 
bindPar (VarArg _ _) v = todo "vararg parameter"
bindPar (VarKeyword _ _) v = todo "keyword parameters"
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE ImpredicativeTypes #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Python.Semantics where

import Analysis.Python.Infrastructure
import Analysis.Python.Syntax
import Analysis.Python.Objects
import Analysis.Python.Objects.Class 
import Analysis.Python.Common
import Analysis.Python.Monad 

import Control.Monad (zipWithM, (>=>), (<=<), (=<<), void)
import qualified Control.Monad
import Domain hiding (lookup, update, from)
import qualified Domain.Core.SeqDomain as SeqDomain
import Lattice
import Control.Monad.Join
import Control.Monad.Error

import Data.Functor ((<&>))
import Data.Kind (Type)
import Data.Void
import Data.Map (Map, (!))
import Data.Set (Set)
import qualified Data.Set as Set
import qualified Data.Map as Map 
import Prelude hiding (break, exp, lookup)
import Data.Bifunctor (Bifunctor(bimap))

-- | Throws an error that the operation must still be implemented
todo :: String -> a
todo = error . ("[TODO] NYI: " ++)

-- | Execute a single statement
exec :: PyM pyM obj => PyStm -> pyM ()
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

execExp :: PyM pyM obj => PyExp -> pyM ()
execExp = void . eval

execAss :: PyM pyM obj => PyLhs -> PyExp -> pyM ()
execAss lhs rhs = eval rhs >>= assignTo lhs
   where assignTo (IdePat ide) val     = lookupEnv (lexNam ide) >>= flip update val 
         assignTo (Field e nam _) val  = eval e >>= assignAttr (ideName nam) val 
         assignTo (ListPat _ _) val    = todo "list assignment"
         assignTo (TuplePat _ _) val   = todo "tuple assignment"

execIff :: PyM pyM obj => [(PyExp, PyStm)] -> PyStm -> pyM ()
execIff clauses els = conds (map (bimap check exec) clauses) (exec els)
   where check = eval >=> pyDeref' >=> at @BlnPrm 

execSeq :: PyM pyM obj => [PyStm] -> pyM ()
execSeq = mapM_ exec

execLet :: PyM pyM obj => [PyIde] -> PyStm -> pyM ()
execLet vrs stm = withExtendedEnv (zip nms ads) (exec stm)
   where nms = map lexNam vrs
         ads = map allocVar vrs
        
execRet :: PyM pyM obj => Maybe PyExp -> PyLoc -> pyM ()
execRet (Just exp) _    = eval exp >>= returnWith
execRet Nothing loc     = returnWith $ constant None

execBrk :: PyM pyM obj => pyM ()
execBrk = break

execCnt :: PyM pyM obj => pyM ()
execCnt = continue

execWhi :: PyM pyM obj => PyExp -> PyStm -> pyM ()
execWhi cnd bdy = void $ getEnv >>= callCmp . LoopCmp cnd bdy

eval :: PyM pyM obj => PyExp -> pyM PyVal
eval (Lam prs bdy loc _)   = evalLam prs bdy loc
eval (Var ide)             = evalVar ide
eval (Literal lit)         = evalLit lit
eval (Call fun arg loc)    = evalCll fun arg loc
eval (Read obj nam loc)    = evalRea obj (ideName nam) loc

evalRea :: PyM pyM obj => PyExp -> String -> PyLoc -> pyM PyVal
evalRea obj nam loc = lookupAttr loc nam =<< eval obj

evalLam :: forall pyM obj . PyM pyM obj => [PyPar] -> PyStm -> PyLoc -> pyM PyVal
evalLam prs bdy loc = do env <- getEnv
                         let clo = (prs, bdy, env)
                         pyAlloc loc (from' @CloPrm clo)

evalVar :: PyM pyM obj => PyIde -> pyM PyVal
evalVar = lookupEnv . lexNam >=> lookup

evalLit :: PyM pyM obj => PyLit -> pyM PyVal
evalLit (Bool bln loc)     = pyAlloc loc (from' @BlnPrm bln)
evalLit (Integer int loc)  = pyAlloc loc (from' @IntPrm int)
evalLit (Real rea loc)     = pyAlloc loc (from' @ReaPrm rea)
evalLit (String str loc)   = pyAlloc loc (from' @StrPrm str)
evalLit (Tuple eps loc)    = pyAlloc loc . from @TupPrm . SeqDomain.fromList =<< mapM eval eps 
evalLit (Dict _)           = todo "dictionary literal"

-- | Applies a procedure

evalCll :: PyM pyM obj => PyExp -> [PyArg] -> PyLoc -> pyM PyVal
evalCll opr opd loc = do fun <- eval opr >>= pyDeref' 
                         ags <- mapM evalArg opd
                         todo "apply" --call fun (`applyClo` ags) (\prm -> applyPrm prm ags loc)
   where evalArg (PosArg arg _) = eval arg
         evalArg (KeyArg _ _ _) = todo "keyword arguments"


--applyClo :: PyM m obj => PyClo -> [PyVal] -> m PyVal 
--applyClo (prs, bdy, env) ags = 
--   withEnv (const env) $ do 
--      bindings <- zipWithM bindPar prs ags
--      withExtendedEnv bindings $ do
--         ext <- getEnv
--         let cmp = CallCmp bdy ext
--         callCmp cmp 

bindPar :: PyM pyM obj => PyPar -> PyVal -> pyM (String, VarAdr)
bindPar (Prm ide _) v = extend adr v >> return (lexNam ide, adr)
   where adr = allocVar ide 
bindPar (VarArg _ _) v = todo "vararg parameter"
bindPar (VarKeyword _ _) v = todo "keyword parameters"
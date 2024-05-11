{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Python.Semantics where

import Domain.Python.Objects 
import Domain.Python.World
import Domain.Python.Syntax
import Analysis.Python.Objects
import Analysis.Python.Common
import Analysis.Python.Monad hiding (Return, Continue, Break)
import Analysis.Python.Primitives
import Analysis.Monad hiding (eval, call, get)
import qualified Analysis.Monad.ComponentTracking as M

import Control.Monad (zipWithM, (>=>), (<=<), void)
import qualified Domain.Core.SeqDomain as SeqDomain
import Lattice
import Control.Monad.Join
import Control.Monad.Escape
import Data.Void
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Map as Map 
import Prelude hiding (break, exp, lookup)
import Data.Bifunctor (Bifunctor(bimap))
import Data.Functor (($>))
import Analysis.Python.Escape (PyEscape(..))

-- | Throws an error that the operation must still be implemented
todo :: String -> a
todo = error . ("[TODO] NYI: " ++)

-- | Evaluate a Python component
evalBdy :: PyM m obj => PyBdy -> m PyVal
evalBdy (Main prg) = catchReturn (exec (programStmt prg) $> constant None)
evalBdy loop@(LoopBdy _ cnd bdy) = 
   cond (eval cnd >>= isTrue)
        ((exec bdy >> M.call loop) `catch` \esc -> condsCP [(return (isContinue esc), M.call loop),
                                                            (return (isBreak esc), return (constant None))]
                                                {- else -} (return $ constant None))
        (return $ constant None)
evalBdy (FuncBdy _ bdy) = catchReturn (exec bdy $> constant None)

catchReturn :: PyM m obj => m PyVal -> m PyVal
catchReturn = (`catch` \esc -> condCP (return $ isReturn esc)
                                      (getReturn esc)
                                      (throw esc))

globalFrame :: ObjAdr
globalFrame = allocCst GlobalFrame

-- | Variable to frame object
frame :: PyM m obj => PyIde -> m (ObjAdr, String)
frame (IdeGbl nam)   = return (globalFrame, nam)
frame (IdeLex ide _) = (,nam) <$> lookupEnv nam
   where nam = ideName ide

-- | Execute a single statement
exec :: PyM pyM obj => PyStm -> pyM ()
exec (Assg _ lhs rhs)            = execAss lhs rhs
exec (Return _ exp loc)          = execRet exp loc
exec (Conditional _ brs els _ )  = execIff brs els
exec (StmtExp _ e _)             = execExp e
exec (Loop _ cnd bdy loc)        = execWhi cnd bdy loc 
exec (Seq _ sts)                 = execSeq sts
exec (Break _ _)                 = execBrk
exec (Continue _ _)              = execCnt
exec (NonLocal x _ _)            = absurd x          -- these can't occur in microPython
exec (Global x _ _)              = absurd x          -- these can't occur in microPython

execExp :: PyM pyM obj => PyExp -> pyM ()
execExp = void . eval

execAss :: forall pyM obj . PyM pyM obj => PyLhs -> PyExp -> pyM ()
execAss lhs rhs = eval rhs >>= assignTo lhs
   where assignTo (IdePat ide) val     = do (frm, nam) <- frame ide
                                            assignAttrAt nam val frm 
         assignTo (Field e nam _) val  = eval e >>= assignAttr (ideName nam) val 
         assignTo (ListPat _ _) val    = todo "list assignment"
         assignTo (TuplePat _ _) val   = todo "tuple assignment"

execIff :: forall pyM obj . PyM pyM obj => [(PyExp, PyStm)] -> PyStm -> pyM ()
execIff clauses els = conds (map (bimap check exec) clauses) (exec els)
   where check = eval @pyM >=> isTrue  

isTrue :: PyM pyM obj => PyVal -> pyM (Abs obj BlnPrm)
isTrue = pyDeref' >=> at @BlnPrm   

execSeq :: PyM pyM obj => [PyStm] -> pyM ()
execSeq = mapM_ exec
        
execRet :: PyM pyM obj => Maybe PyExp -> PyLoc -> pyM ()
execRet (Just exp) _    = eval exp >>= returnWith
execRet Nothing loc     = returnWith $ constant None

execBrk :: PyM pyM obj => pyM ()
execBrk = break

execCnt :: PyM pyM obj => pyM ()
execCnt = continue

execWhi :: PyM pyM obj => PyExp -> PyStm -> PyLoc -> pyM ()
execWhi cnd bdy loc = void $ M.call @PyVal (LoopBdy loc cnd bdy) 

eval :: PyM pyM obj => PyExp -> pyM PyVal
eval (Lam prs bdy loc lcl) = evalLam prs bdy loc lcl
eval (Var ide)             = evalVar ide
eval (Literal lit)         = evalLit lit
eval (Call fun arg loc)    = evalCll fun arg loc
eval (Read obj nam loc)    = evalRea obj (ideName nam) loc

evalRea :: PyM pyM obj => PyExp -> String -> PyLoc -> pyM PyVal
evalRea obj nam loc = lookupAttr loc nam =<< eval obj

evalLam :: PyM pyM obj => [PyPar] -> PyStm -> PyLoc -> [String] -> pyM PyVal
evalLam prs bdy loc lcl = do env <- getEnv
                             let clo = PyClo loc prs bdy lcl env
                             pyAlloc loc (from' @CloPrm clo)

evalVar :: PyM pyM obj => PyIde -> pyM PyVal
evalVar var = do (adr, nam) <- frame var
                 frm <- lookupAdr adr
                 return $ getAttr nam frm 

evalLit :: PyM pyM obj => PyLit -> pyM PyVal
evalLit (Bool bln loc)     = pyAlloc loc (from' @BlnPrm bln)
evalLit (Integer int loc)  = pyAlloc loc (from' @IntPrm int)
evalLit (Real rea loc)     = pyAlloc loc (from' @ReaPrm rea)
evalLit (String str loc)   = pyAlloc loc (from' @StrPrm str)
evalLit (Tuple eps loc)    = pyAlloc loc . from @TupPrm . SeqDomain.fromList =<< mapM eval eps 
evalLit (Dict _)           = todo "dictionary literal"

-- | Applies a procedure

evalCll :: PyM pyM obj => PyExp -> [PyArg] -> PyLoc -> pyM PyVal
evalCll opr opd loc = do fun <- eval opr
                         ags <- mapM evalArg opd
                         call loc ags fun
   where evalArg (PosArg arg _) = eval arg
         evalArg (KeyArg _ _ _) = todo "keyword arguments"

call :: PyM pyM obj => PyLoc -> [PyVal] -> PyVal -> pyM PyVal 
call loc ags = callObj loc ags <=< pyDeref' 

callObj :: PyM pyM obj => PyLoc -> [PyVal] -> obj -> pyM PyVal 
callObj pos ags obj = condsCP [(return (has @BndPrm obj), callBnd pos ags (get @BndPrm obj)),
                               (return (has @CloPrm obj), callClo pos ags (get @CloPrm obj)),
                               (return (has @PrmPrm obj), callPrm pos ags (get @PrmPrm obj))]
                   {- else -} (escape NotCallable)

callBnd :: PyM pyM obj => PyLoc -> [PyVal] -> Map ObjAdr PyVal -> pyM PyVal 
callBnd pos ags = mjoinMap apply . Map.toList
  where apply (rcv, fns) = call pos (injectAdr rcv : ags) fns 

callPrm :: PyM pyM obj => PyLoc -> [PyVal] -> Set PyPrim -> pyM PyVal 
callPrm pos ags = mjoinMap apply
 where apply prm = applyPrim prm pos ags

callClo :: PyM pyM obj => PyLoc -> [PyVal] -> Set PyClo -> pyM PyVal 
callClo pos ags = mjoinMap apply
 where apply (PyClo loc prs bdy lcl env) = 
         withEnv (const env) $ do frame <- store loc (new $ constant $ TypeObject FrameType)
                                  mapM_ (\(par, arg) -> bindPar par arg frame) (zip prs ags)
                                  let bindings = map (,frame) lcl 
                                  withExtendedEnv bindings $ M.call (FuncBdy loc bdy)

bindPar :: PyM pyM obj => PyPar -> PyVal -> ObjAdr -> pyM ()
bindPar (Prm ide _) vlu = assignAttrAt (ideName $ lexIde ide) vlu 
bindPar (VarArg _ _) vlu = todo "vararg parameter"
bindPar (VarKeyword _ _) vlu = todo "keyword parameters"
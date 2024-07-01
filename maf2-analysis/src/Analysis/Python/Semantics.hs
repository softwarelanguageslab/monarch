{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE LambdaCase #-}

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

import Control.Monad (zipWithM, (>=>), (<=<), void, foldM, when)
import qualified Domain.Core.SeqDomain as SeqDomain
import qualified Domain.Core.DictionaryDomain as DctDomain 
import Lattice
import Control.Monad.Join
import Control.Monad.Escape
import Data.Void
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Map as Map 
import qualified Data.Set as Set 
import Prelude hiding (break, exp, lookup)
import Data.Bifunctor (Bifunctor(bimap), second)
import Data.Functor (($>))
import Analysis.Python.Escape (PyEscape(..))
import Domain (Domain(..))
import Domain (BoolDomain(..))

-- | Throws an error that the operation must still be implemented
todo :: String -> a
todo = error . ("[TODO] NYI: " ++)

-- | Evaluate a Python component
evalBdy :: PyM m obj => PyBdy -> m PyVal
evalBdy (Main prg) = catchReturn (exec (programStmt prg) $> constant None)
evalBdy loop@(LoopBdy _ cnd bdy) = 
   cond (eval cnd >>= pyIsTrue)
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

execAss :: PyM pyM obj => PyLhs -> PyExp -> pyM ()
execAss lhs rhs = eval rhs >>= assignTo lhs
   where assignTo (IdePat ide) val     = do (frm, nam) <- frame ide
                                            assignAttrAt nam val frm 
         assignTo (Field e nam _) val  = eval e >>= assignAttr (ideName nam) val 
         assignTo (ListPat _ _) val    = todo "list assignment"
         assignTo (TuplePat _ _) val   = todo "tuple assignment"

execIff :: forall pyM obj . PyM pyM obj => [(PyExp, PyStm)] -> PyStm -> pyM ()
execIff clauses els = conds (map (bimap check exec) clauses) (exec els)
   where check = eval @pyM >=> pyIsTrue  

pyIsTrue :: PyM pyM obj => PyVal -> pyM (Abs obj BlnPrm)
pyIsTrue = pyDeref' >=> at @BlnPrm   

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
eval (Lam prs bdy loc lcl)  = evalLam prs bdy loc lcl
eval (Var ide)              = evalVar ide
eval (Literal lit)          = evalLit lit
eval (Call fun arg kwa loc) = evalCll fun arg kwa loc
eval (Read obj nam loc)     = evalRea obj (ideName nam) loc

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

evalLit :: forall pyM obj . PyM pyM obj => PyLit -> pyM PyVal
evalLit (Bool bln loc)     = pyAlloc loc (from' @BlnPrm bln)
evalLit (Integer int loc)  = pyAlloc loc (from' @IntPrm int)
evalLit (Real rea loc)     = pyAlloc loc (from' @ReaPrm rea)
evalLit (String str loc)   = pyAlloc loc (from' @StrPrm str)
evalLit (Tuple eps loc)    = pyAlloc loc . from @TupPrm . SeqDomain.fromList =<< mapM eval eps 
evalLit (Dict bds loc)     = pyAlloc loc . from @DctPrm . DctDomain.from =<< mapM evalBnd bds
   where evalBnd (kexp, vexp) = (,) <$> (eval kexp >>= (pyDeref' >=> at @StrPrm)) <*> eval vexp 

-- | Applies a procedure

evalCll :: PyM pyM obj => PyExp -> [PyExp] -> [(Ide PyLoc, PyExp)] -> PyLoc -> pyM PyVal
evalCll opr pos kwa loc = do fun <- eval opr
                             psv <- mapM eval pos
                             kwv <- mapM (\(ide, exp) -> (ide,) <$> eval exp) kwa 
                             call loc psv kwv fun

call :: PyM pyM obj => PyLoc -> [PyVal] -> [(Ide PyLoc, PyVal)] -> PyVal -> pyM PyVal 
call loc pos kwa = callObj loc pos kwa <=< pyDeref' 

callObj :: PyM pyM obj => PyLoc -> [PyVal] -> [(Ide PyLoc, PyVal)] -> obj -> pyM PyVal 
callObj loc pos kwa obj = condsCP [(return (obj `isType` BoundType), callBnd loc pos kwa (get @BndPrm obj)),
                                   (return (obj `isType` CloType),   callClo loc pos kwa (get @CloPrm obj)),
                                   (return (obj `isType` PrimType),  callPrm loc pos (get @PrmPrm obj))]
                      {- else -}  (escape NotCallable)

callPrm :: PyM pyM obj => PyLoc -> [PyVal] -> Set PyPrim -> pyM PyVal 
callPrm pos ags = mjoinMap apply
 where apply prm = applyPrim prm pos ags

callBnd :: PyM pyM obj => PyLoc -> [PyVal] -> [(Ide PyLoc, PyVal)] -> Map ObjAdr PyVal -> pyM PyVal 
callBnd loc pos kwa = mjoinMap apply . Map.toList
  where apply (rcv, fns) = call loc (injectAdr rcv : pos) kwa fns 

callClo :: PyM pyM obj => PyLoc -> [PyVal] -> [(Ide PyLoc, PyVal)] -> Set PyClo -> pyM PyVal 
callClo _ pos kwa = mjoinMap apply
 where apply (PyClo loc prs bdy lcl env) = 
         withEnv (const env) $ do frm  <- store (FrmLoc loc) (new $ constant $ TypeObject FrameType)
                                  let ari = length prs 
                                  let psn = length pos 
                                  let kps = drop psn prs 
                                  let akw = Set.fromList $ map (ideName . fst) kwa
                                  let pkw = Set.fromList $ map parNam kps 
                                  if psn <= ari && akw == pkw 
                                    then do mapM_ (\(par, arg) -> assignAttrAt (parNam par) arg frm) (zip prs pos) -- bind positional args 
                                            mapM_ (\(kyw, arg) -> assignAttrAt (ideName kyw) arg frm) kwa             -- bind keyword args
                                            let bindings = map (,frm) lcl 
                                            withExtendedEnv bindings $ M.call (FuncBdy loc bdy)   
                                    else escape ArityError  

parNam :: PyPar -> String 
parNam (Prm ide _) = ideName (lexIde ide) 
parNam (VarArg _ _) = todo "vararg parameter"
parNam (VarKeyword _ _) = todo "varkeyword parameters"

-- TODO: move this elsewhere
-- TODO: improve implementation?
isType :: PyObj' obj => obj -> PyType -> CP Bool
isType obj typ
   | Set.null cls = bottom
   | Set.size cls == 1 && adr `elem` cls = true 
   | adr `notElem` cls = false 
   | otherwise = boolTop 
   where adr = allocCst $ TypeObject typ 
         cls = addrs $ getAttr (attrStr ClassAttr) obj
              
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Analysis.Python.Semantics where

import Domain.Python.Objects
import Domain.Python.World
import qualified Domain.Python.World as Py
import Domain.Python.Syntax hiding (None)
import qualified Domain.Python.Syntax as Syntax
import Analysis.Python.Objects
import Analysis.Python.Common
import Analysis.Python.Monad.Class
import Analysis.Python.Primitives
import Control.Monad ((>=>), void)
import qualified Domain.Core.SeqDomain as SeqDomain
import qualified Domain.Core.DictionaryDomain as DctDomain
import Lattice
import Control.Monad.Join
import Data.Void
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Map as Map
import qualified Data.Set as Set
import Prelude hiding (break, exp, lookup, True, False)
import Data.Functor (($>))
import Analysis.Environment (extends)
import qualified Debug.Trace as Debug
import GHC.IO (unsafePerformIO)

-- | Throws an error that the operation must still be implemented
todo :: String -> a
todo = error . ("[TODO] NYI: " ++)


-- | Evaluate a Python component
evalBdy :: PyM m obj vlu => PyBdy -> m vlu
evalBdy (Main prg) = pyReturnable (exec (programStmt prg) $> constant None)
evalBdy (LoopBdy loc cnd bdy) = pyIf (eval cnd)
                                     (pyCatchLoop (exec bdy >> evalWhi cnd bdy loc)
                                                  (return $ constant None)  -- break
                                                  (evalWhi cnd bdy loc))    -- continue
                                     (return $ constant None)
evalBdy (FuncBdy _ bdy) = pyReturnable (exec bdy $> constant None)

globalFrame :: ObjAdr
globalFrame = allocCst GlobalFrame

-- | Variable to frame object
frame :: PyM m obj vlu => PyIde -> m (ObjAdr, String)
frame (IdeGbl nam)   = return (globalFrame, nam)
frame (IdeLex ide _) = (,nam) <$> pyLookupEnv nam
   where nam = ideName ide

-- | Execute a single statement
exec :: PyM pyM obj vlu => PyStm -> pyM ()
exec (Assg _ lhs rhs)            = execAss lhs rhs
exec (Return _ exp loc)          = execRet exp loc
exec (Conditional _ brs els _ )  = execIff brs els
exec (StmtExp _ e _)             = execExp e
exec (Loop _ cnd bdy loc)        = execWhi cnd bdy loc
exec (Seq _ sts)                 = execSeq sts
exec (Break _ _)                 = execBrk
exec (Continue _ _)              = execCnt
exec (Raise _ exp _)             = execRai exp
exec (Try _ bdy hds _)           = execTry bdy hds
exec (NonLocal x _ _)            = absurd x          -- these can't occur in microPython
exec (Global x _ _)              = absurd x          -- these can't occur in microPython

execExp :: PyM pyM obj vlu => PyExp -> pyM ()
execExp = void . eval

execRai :: PyM pyM obj vlu => PyExp -> pyM ()
execRai = eval >=> pyRaise

execTry :: forall pyM obj vlu . PyM pyM obj vlu => PyStm -> [(PyExp, PyStm)] -> pyM ()
execTry bdy hds = exec bdy `pyCatchExc` checkHandlers hds
   where
         checkHandlers :: [(PyExp, PyStm)] -> vlu -> pyM ()
         checkHandlers [] exc = pyRaise exc
         checkHandlers ((exp, hdl):rst) exc = do cls <- eval exp
                                                 pyIf_ (exc `isInstanceOf` cls)
                                                       (exec hdl)
                                                       (checkHandlers rst exc)

execAss :: forall pyM obj vlu . PyM pyM obj vlu => PyLhs -> PyExp -> pyM ()
execAss lhs rhs = eval rhs >>= assignTo lhs
   where
         assignTo :: PyLhs -> vlu -> pyM ()
         assignTo (IdePat ide) vlu     = do (frm, nam) <- frame ide
                                            pyAssignAt nam vlu frm
         assignTo (Field e nam _) vlu  = eval e >>= pyAssign (ideName nam) vlu
         assignTo (ListPat _ _) vlu    = todo "list assignment"
         assignTo (TuplePat _ _) vlu   = todo "tuple assignment"

execIff :: forall pyM obj vlu . PyM pyM obj vlu => [(PyExp, PyStm)] -> PyStm -> pyM ()
execIff [] els = exec els
execIff ((prd, bdy):rst) els = pyIf_ (eval prd)
                                     (exec bdy)
                                     (execIff rst els)

execSeq :: PyM pyM obj vlu => [PyStm] -> pyM ()
execSeq = mapM_ exec

execRet :: PyM pyM obj vlu => Maybe PyExp -> PyLoc -> pyM ()
execRet (Just exp) _    = eval exp >>= pyReturn
execRet Nothing loc     = pyReturn (constant None)

execBrk :: PyM pyM obj vlu => pyM ()
execBrk = pyBreak

execCnt :: PyM pyM obj vlu => pyM ()
execCnt = pyContinue

execWhi :: forall pyM obj vlu . PyM pyM obj vlu => PyExp -> PyStm -> PyLoc -> pyM ()
execWhi cnd bdy loc = void $ evalWhi cnd bdy loc

evalWhi :: forall pyM obj vlu . PyM pyM obj vlu => PyExp -> PyStm -> PyLoc -> pyM vlu
evalWhi cnd bdy loc = pyWithCtx loc $ pyCall loc (LoopBdy loc cnd bdy)

eval :: PyM pyM obj vlu => PyExp -> pyM vlu
eval (Lam prs bdy loc lcl)  = evalLam prs bdy loc lcl
eval (Var ide)              = evalVar ide
eval (Literal lit)          = evalLit lit
eval (Call fun arg kwa loc) = evalCll fun arg kwa loc
eval (Read obj nam loc)     = evalRea obj (ideName nam) loc

evalRea :: PyM pyM obj vlu => PyExp -> String -> PyLoc -> pyM vlu
evalRea obj nam loc = lookupAttr loc nam =<< eval obj

evalLam :: PyM pyM obj vlu => [PyPar] -> PyStm -> PyLoc -> [String] -> pyM vlu
evalLam prs bdy loc lcl = do env <- pyGetEnv
                             let clo = PyClo loc prs bdy lcl env
                             pyStore loc (from' @CloPrm clo)

evalVar :: PyM pyM obj vlu => PyIde -> pyM vlu
evalVar var = do (adr, nam) <- frame var
                 frm        <- pyLookupSto adr
                 getAttr nam frm

evalLit :: forall pyM obj vlu . PyM pyM obj vlu => PyLit -> pyM vlu
evalLit (Syntax.None _)    = return $ constant None
evalLit (Bool bln loc)
   | bln                   = return $ constant True 
   | otherwise             = return $ constant False 
evalLit (Integer int loc)  = pyStore loc (from' @IntPrm int)
evalLit (Real rea loc)     = pyStore loc (from' @ReaPrm rea)
evalLit (String str loc)   = pyStore loc (from' @StrPrm str)
evalLit (Tuple eps loc)    = pyStore loc . from @TupPrm . SeqDomain.fromList =<< mapM eval eps
evalLit (List exs loc)     = pyStore loc . from @LstPrm . SeqDomain.fromList =<< mapM eval exs
evalLit (Dict bds loc)     = buildDct [] =<< mapM (\(kex,vex) -> (,) <$> eval kex <*> eval vex) bds
   --pyStore loc . from @DctPrm . DctDomain.from =<< mapM evalBnd bds
   where
         buildDct :: [(CP String, vlu)] -> [(vlu, vlu)] -> pyM vlu
         buildDct acc [] = DctDomain.from acc >>= \dct -> pyStore loc (from @DctPrm dct)
         buildDct acc ((kv,vv):r) = pyDeref (\_ ko -> do str <- get @StrPrm ko
                                                         buildDct ((str,vv):acc) r) kv

-- | Applies a procedure

evalCll :: PyM pyM obj vlu => PyExp -> [PyExp] -> [(Ide PyLoc, PyExp)] -> PyLoc -> pyM vlu
evalCll opr pos kwa loc = do fun <- eval opr
                             psv <- mapM eval pos
                             kwv <- mapM (\(ide, exp) -> (ide,) <$> eval exp) kwa
                             call loc psv kwv fun

call :: PyM pyM obj vlu => PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> vlu -> pyM vlu
call loc pos kwa = pyDeref (\adr obj ->
   pyIf (obj `isType` BoundType)
        (callBnd loc pos kwa (at @BndPrm obj))
        (pyIf (obj `isType` CloType)
              (callClo loc pos kwa (at @CloPrm obj))
              (pyIf (obj `isType` PrimType)
                    (callPrm loc pos (at @PrmPrm obj))
                    (pyIf (obj `isType` TypeType)
                          (callTyp loc pos kwa (injectAdr adr))  --TODO: metaclasses...
               {- else -} (pyError NotCallable)))))

callTyp :: forall pyM obj vlu . PyM pyM obj vlu => PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> vlu -> pyM vlu
callTyp loc pos kwa typ = do ref <- pyStore loc obj
                             mtd <- lookupAttr (tagAs IniBnd loc) (attrStr InitAttr) ref
                             _   <- call (tagAs IniCll loc) pos kwa mtd    -- do the __init__ call (and ignore its result)
                             return ref
   where obj = new'' typ [] [] 

callPrm :: PyM pyM obj vlu => PyLoc -> [vlu] -> Set (Either PyPrim XPyPrim) -> pyM vlu
callPrm pos ags = mjoinMap apply
 where apply (Left prm)  = applyPrim prm pos ags
       apply (Right prm) = applyXPrim prm pos ags  

callBnd :: PyM pyM obj vlu => PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> Map ObjAdr vlu -> pyM vlu
callBnd loc pos kwa = mjoinMap apply . Map.toList
  where apply (rcv, fns) = call loc (injectAdr rcv : pos) kwa fns

callClo :: forall pyM obj vlu . PyM pyM obj vlu => PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> Set PyClo -> pyM vlu
callClo l pos kwa = mjoinMap apply
 where
      apply :: PyClo -> pyM vlu
      apply (PyClo loc prs bdy lcl env) =
         pyWithCtx l $
            do frm <- pyAlloc (tagAs FrmTag loc) (new' FrameType [] [])
               let ari = length prs
               let psn = length pos
               let kps = drop psn prs
               let akw = Set.fromList $ map (ideName . fst) kwa
               let pkw = Set.fromList $ map parNam kps
               if psn <= ari && akw == pkw
               then do mapM_ (\(par, arg) -> pyAssignAt (parNam par) arg frm) (zip prs pos) -- bind positional args 
                       mapM_ (\(kyw, arg) -> pyAssignAt (ideName kyw) arg frm) kwa          -- bind keyword args
                       let bindings = map (,frm) lcl
                       pyWithEnv (extends bindings env) $ pyCall l (FuncBdy loc bdy)
               else pyError ArityError

-- TODO: move this elsewhere
-- TODO: improve implementation?
isType :: PyM pyM obj vlu => obj -> PyType -> pyM vlu
isType obj typ = 
   getAttr (attrStr ClassAttr) obj >>= 
      pyDeref (\a _ -> return . constant $ if a == adr then Py.True else Py.False)
   where adr = allocCst (TypeObject typ)

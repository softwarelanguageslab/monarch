{-# LANGUAGE LambdaCase #-}
module Analysis.Python.Semantics.Class where 


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

-- | Throws an error that the operation must still be implemented
todo :: String -> a
todo = error . ("[TODO] NYI: " ++)

globalFrame :: ObjAdr
globalFrame = allocCst GlobalFrame


class (PyM m obj vlu) => PySemantics m obj vlu where 
    -- | Evaluate a Python component
    evalBdy :: PyBdy -> m vlu
    evalBdy (Main prg) = pyReturnable (exec (programStmt prg) $> constant None)
    evalBdy (LoopBdy loc cnd bdy) =
        pyIf' loc   (eval cnd)
                    (pyCatchLoop    (exec bdy >> evalWhi cnd bdy loc)
                                    (return $ constant None)  -- break
                                    (evalWhi cnd bdy loc))    -- continue
                    (return $ constant None)
    evalBdy (FuncBdy _ bdy) = pyReturnable (exec bdy $> constant None)

    -- | Variable to frame object
    frame :: PyIde -> m (ObjAdr, String)
    frame (IdeGbl nam)   = return (globalFrame, nam)
    frame (IdeLex ide _) = (,nam) <$> pyLookupEnv nam
        where nam = ideName ide

    -- | Execute a single statement
    exec :: PyStm -> m ()
    exec (Assg _ lhs rhs)            = execAss lhs rhs
    exec (Return _ exp _)            = execRet exp
    exec (Conditional _ brs els loc) = execIff loc brs els
    exec (StmtExp _ e _)             = execExp e
    exec (Loop _ cnd bdy loc)        = execWhi cnd bdy loc
    exec (Seq _ sts)                 = execSeq sts
    exec (DecoratedStm _ dec stm _)  = execDec dec stm
    exec (Break _ _)                 = execBrk
    exec (Continue _ _)              = execCnt
    exec (Raise _ exp _)             = execRai exp
    exec (Try _ bdy hds _)           = execTry bdy hds
    exec (NonLocal x _ _)            = absurd x          -- these can't occur in microPython
    exec (Global x _ _)              = absurd x          -- these can't occur in microPython
    execExp :: PyExp -> m ()
    execExp = void . eval
    execRai :: PyExp -> m ()
    execRai = eval >=> pyRaise
    execTry :: PyStm -> [(PyExp, PyStm)] -> m ()
    execTry bdy hds = exec bdy `pyCatchExc` checkHandlers hds
        where
         checkHandlers :: [(PyExp, PyStm)] -> vlu -> m ()
         checkHandlers [] exc = pyRaise exc
         checkHandlers ((exp, hdl):rst) exc = do cls <- eval exp
                                                 pyIf_ (exc `isInstanceOf` cls)
                                                       (exec hdl)
                                                       (checkHandlers rst exc)
    execAss :: PyLhs -> PyExp -> m ()
    execAss lhs rhs = eval rhs >>= assignTo lhs
    assignTo :: PyLhs -> vlu -> m ()
    assignTo (IdePat ide) vlu     = do (frm, nam) <- frame ide
                                       pyAssignAt nam vlu frm
    assignTo (Field e nam _) vlu  = eval e >>= pyAssign (ideName nam) vlu
    assignTo (ListPat _ _) vlu    = todo "list assignment"
    assignTo (TuplePat _ _) vlu   = todo "tuple assignment"
    execIff :: PyLoc -> [(PyExp, PyStm)] -> PyStm -> m ()
    execIff _ [] els = exec els
    execIff loc ((prd, bdy):rst) els =
        pyIf'_ loc  (eval prd)
                    (exec bdy)
                    (execIff (tagAs IffNxt loc) rst els)
    execDec :: String -> PyStm -> m ()
    execDec _ = exec -- ignore the decorator in standard semantics 
    execSeq :: [PyStm] -> m () 
    execSeq = mapM_ exec
    execRet :: Maybe PyExp -> m ()
    execRet (Just exp)  = eval exp >>= pyReturn
    execRet Nothing     = pyReturn (constant None)
    execBrk :: m ()
    execBrk = pyBreak
    execCnt :: m ()
    execCnt = pyContinue
    execWhi :: PyExp -> PyStm -> PyLoc -> m ()
    execWhi cnd bdy loc = void $ evalWhi cnd bdy loc

    evalWhi :: PyExp -> PyStm -> PyLoc -> m vlu
    evalWhi cnd bdy loc = pyWithCtx loc $ pyCall loc (LoopBdy loc cnd bdy)  
    eval :: PyExp -> m vlu
    eval (Lam prs bdy loc lcl)  = evalLam prs bdy loc lcl
    eval (Var ide)              = evalVar ide 
    eval (Literal lit)          = evalLit lit
    eval (Call fun arg kwa loc) = evalCll fun arg kwa loc
    eval (Read obj nam loc)     = evalRea obj (ideName nam) loc
    eval (LogicOp op args loc)  = evalLogic op args loc
    evalLogic :: LOp PyLoc -> [PyExp] -> PyLoc -> m vlu 
    evalLogic (LNot _) [arg] l = do 
        pyIf' l (eval arg) (return $ constant False) (return $ constant True)
    evalLogic (LAnd _) [a, b] l = do 
        v1 <- eval a 
        pyIf' l (return v1) (eval b) (return v1) -- if a is false then a else b
    evalLogic (LOr _) [a, b] l = do 
        v1 <- eval a 
        pyIf' l (return v1) (return v1) (eval b) -- if a is true then a else b
    evalLogic _ _ _ = error "evalLogic: wrong number of arguments"
    evalRea :: PyExp -> String -> PyLoc -> m vlu
    evalRea obj nam loc = lookupAttr loc nam =<< eval obj

    evalLam :: [PyPar] -> PyStm -> PyLoc -> [String] -> m vlu
    evalLam prs bdy loc lcl = do env <- pyGetEnv
                                 let clo = PyClo loc prs bdy lcl env
                                 pyStore loc (from' @CloPrm clo)

    evalVar :: PyIde -> m vlu
    evalVar var = do (adr, nam) <- frame var
                     frm        <- pyLookupSto adr
                     getAttr nam frm
    evalLit :: PyLit -> m vlu
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
            buildDct :: [(CP String, vlu)] -> [(vlu, vlu)] -> m vlu
            buildDct acc [] = DctDomain.from acc >>= \dct -> pyStore loc (from @DctPrm dct)
            buildDct acc ((kv,vv):r) = pyDeref (\_ ko -> do str <- get @StrPrm ko
                                                            buildDct ((str,vv):acc) r) kv
    -- | Applies a procedure
    evalCll :: PyExp -> [PyExp] -> [(Ide PyLoc, PyExp)] -> PyLoc -> m vlu
    evalCll opr pos kwa loc = do fun <- eval opr
                                 psv <- mapM eval pos
                                 kwv <- mapM (\(ide, exp) -> (ide,) <$> eval exp) kwa
                                 call loc psv kwv fun

    call :: PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> vlu -> m vlu
    call loc pos kwa = pyDeref (\adr obj ->
        pyIf (obj `isType` BoundType)
            (callBnd loc pos kwa (at @BndPrm obj))
            (pyIf   (obj `isType` CloType)
                    (callClo loc pos kwa (at @CloPrm obj))
                    (pyIf   (obj `isType` PrimType)
                            (callPrm loc pos (at @PrmPrm obj))
                            (pyIf (obj `isType` TypeType)
                                  (callTyp loc pos kwa (injectAdr adr))  --TODO: metaclasses...
                       {- else -} (pyError NotCallable)))))

    callTyp :: PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> vlu -> m vlu
    callTyp loc pos kwa typ = do ref <- pyStore loc obj
                                 mtd <- lookupAttr (tagAs IniBnd loc) (attrStr InitAttr) ref
                                 _   <- call (tagAs IniCll loc) pos kwa mtd    -- do the __init__ call (and ignore its result)
                                 return ref
        where obj = new'' typ [] [] 

    callPrm :: PyLoc -> [vlu] -> Set (Either PyPrim XPyPrim) -> m vlu
    callPrm pos ags = mjoinMap apply
        where apply (Left prm)  = applyPrim prm pos ags
              apply (Right prm) = applyXPrim (Debug.traceShowId prm) pos ags  

    callBnd :: PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> Map ObjAdr vlu -> m vlu
    callBnd loc pos kwa = mjoinMap apply . Map.toList
        where apply (rcv, fns) = call loc (injectAdr rcv : pos) kwa fns

    callClo :: PyLoc -> [vlu] -> [(Ide PyLoc, vlu)] -> Set PyClo -> m vlu
    callClo l pos kwa = mjoinMap apply
        where
            apply :: PyClo -> m vlu
            apply (PyClo loc prs bdy lcl env) =
                pyWithCtx l $
                    do  frm <- pyAlloc (tagAs FrmTag loc) (new' FrameType [] [])
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


    pyIf' :: PyLoc -> m vlu -> m vlu -> m vlu -> m vlu
    pyIf' l prd csq alt = do 
        boolPrim <- prd >>= lookupAttr (tagAs IffPrm l) (attrStr BoolAttr)
        call (tagAs IffCnd l) [] [] boolPrim >>= pyDeref' (\obj -> cond (get @BlnPrm obj) csq alt)

    pyIf'_ :: PyLoc -> m vlu -> m () -> m () -> m ()
    pyIf'_ l prd csq alt = do 
        boolPrim <- prd >>= lookupAttr (tagAs IffPrm l) (attrStr BoolAttr)
        call (tagAs IffCnd l) [] [] boolPrim >>= pyDeref_ (\_ obj -> cond (get @BlnPrm obj) csq alt)

    -- TODO: move this elsewhere
    -- TODO: improve implementation?
    isType :: obj -> PyType -> m vlu
    isType obj typ = 
        getAttr (attrStr ClassAttr) obj >>= 
            pyDeref (\a _ -> return . constant $ if a == adr then Py.True else Py.False)
        where adr = allocCst (TypeObject typ)


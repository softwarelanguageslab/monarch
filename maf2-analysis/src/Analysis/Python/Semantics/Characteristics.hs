{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.Characteristics where

import Lattice (CP)
import Control.Monad.Join (mjoinMap, cond)
import qualified Data.Map as Map
import qualified Data.Set as Set
import Analysis.Monad.FunctionCharacteristics
import Analysis.Python.Common
import Analysis.Python.Semantics.Class
import Analysis.Python.Monad.Characteristics
import Analysis.Python.Monad.Class
import Domain.Python.Syntax
import Domain.Python.World
import Domain.Python.Objects
import Data.Maybe (listToMaybe)
import Analysis.Environment (Environment(extends))

instance (vlu ~ ObjAddrSet, PyM (PythonCharacteristicsAnalysisT m) obj vlu, CharacteristicsM PyLoc m) => PySemantics (PythonCharacteristicsAnalysisT m) obj vlu where
    callBnd loc pos kwa = mjoinMap apply . Map.toList
        where apply (rcv, fns) = do pyDeref_ (\_ ob -> 
                                        cond @_ @(CP Bool) (return $ has @CloPrm ob) 
                                        -- add the receiver, call site and the first parameter of the function to its characteristics
                                                           (mapM_ (\f -> do addReceiver f rcv
                                                                            addCallSite f loc (objAddrSetFromList $ injectAdr rcv : (pos ++ map snd kwa))
                                                                            mapM_ (addParameterObject f) (maybe [] objAddrSetToList $ listToMaybe pos))
                                                                  $ cloLoc ob)
                                                           (return ())) fns
                                    call loc (injectAdr rcv : pos) kwa fns
    
    callClo l pos kwa = mjoinMap apply
        where
            apply (PyClo loc prs bdy lcl env) = do 
                -- add the call site and the first parameter of the function to its characteristics
                addCallSite loc l $ objAddrSetFromList (pos ++ map snd kwa)
                mapM_ (addParameterObject loc) (maybe [] objAddrSetToList $ listToMaybe pos)
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
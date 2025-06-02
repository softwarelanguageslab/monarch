{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module SoundnessSpec(spec) where 

-- general imports
import qualified Data.Vector as Vector
import qualified Data.Map as Map

import Test 
import Domain.Class
import Domain (SimplePair(..))
import Domain.Core.VectorDomain.Class (VectorDomain(makeVector))
import Domain.Core.PairDomain.Class
import qualified Lattice.Class as Lattice
import Lattice (BottomLattice(bottom), joins)
import qualified Data.TypeLevel.HMap as HMap
import Syntax.Ide
-- scheme
import Domain.Scheme.Modular (SchemeKey(..), SchemeVal(..))
import Analysis.Scheme
import qualified Analysis.Scheme.Simple as Scheme
import qualified Syntax.Scheme
import qualified Interpreter.Scheme as Concrete
import qualified Domain.Scheme.Store as AbstractStore
import Domain.Scheme.Class (PaiDom, SchemeDomain (nil, symbol))
import qualified Benchmark.Scheme.Programs as SchemeBenchmarks
-- python
import Analysis.Python.Fixpoint (analyzeCP)
import Domain.Python.Syntax (parse)
import Interpreter.Python.Eval (evalPythonProgram)
import qualified Benchmark.Python.Programs as PythonBenchmarks

maybeToEither :: e -> Maybe a -> Either e a 
maybeToEither e Nothing = Left e 
maybeToEither _ (Just a) = Right a

----------------------
-- SCHEME SOUNDNESS --
----------------------
instance Domain Scheme.V Concrete.SchemeValue where 
    inject (Concrete.SchemePtr adr) = bottom -- todo
    inject (Concrete.SchemeInt int) = inject int
    inject (Concrete.SchemeRea rea) = inject rea
    inject (Concrete.SchemeBoo boo) = inject boo
    inject (Concrete.SchemeCha cha) = inject cha 
    inject (Concrete.SchemeSym sym) = symbol sym
    inject (Concrete.SchemeClo (exp, env)) = bottom -- todo
    inject Concrete.SchemeNil = nil
    inject Concrete.SchemeUns = SchemeVal $ HMap.singleton @UnspKey ()
    inject (Concrete.SchemePrim s) = SchemeVal $ HMap.singleton @PrimKey $ inject s
    inject (Concrete.SchemePair v1 v2) = error "should not happen"
    inject (Concrete.SchemeVector vector) = error "should not happen"
    inject (Concrete.SchemeString s) = error "should not happen"

-- pointers and closures are not checked
instance Domain (AbstractStore.StoreVal Scheme.V) Concrete.SchemeValue where 
    inject (Concrete.SchemePtr adr) = AbstractStore.VarVal bottom -- todo
    inject (Concrete.SchemeInt int) = AbstractStore.VarVal (inject int) 
    inject (Concrete.SchemeRea rea) = AbstractStore.VarVal (inject rea) 
    inject (Concrete.SchemeBoo boo) = AbstractStore.VarVal (inject boo) 
    inject (Concrete.SchemeCha cha) = AbstractStore.VarVal (inject cha) 
    inject (Concrete.SchemeSym sym) = AbstractStore.VarVal (symbol sym)
    inject (Concrete.SchemeClo (exp, env)) = AbstractStore.VarVal bottom -- todo
    inject Concrete.SchemeNil = AbstractStore.VarVal nil
    inject Concrete.SchemeUns = AbstractStore.VarVal (SchemeVal $ HMap.singleton @UnspKey ())
    inject (Concrete.SchemePrim s) = AbstractStore.VarVal (SchemeVal $ HMap.singleton @PrimKey $ inject s)
    inject (Concrete.SchemePair v1 v2) = AbstractStore.PaiVal (cons (inject v1) (inject v2))
    inject (Concrete.SchemeVector vector) = AbstractStore.VecVal (makeVector 
            (inject $ Concrete.SchemeInt $ fromIntegral $ Vector.length vector) 
            (joins $ map inject $ Vector.toList vector))
    inject (Concrete.SchemeString s) = AbstractStore.StrVal (inject s)


addressMatches :: Concrete.CAdr -> Adr -> Bool 
addressMatches (Concrete.CAdr (_, e1)) (AbstractStore.PtrAdr e2 _) = e1 == e2
addressMatches (Concrete.VarAdr (_, id1)) (AbstractStore.VarAdr id2 _) = id1 == id2
addressMatches (Concrete.PrmAdr s1) (AbstractStore.PrrAdr s2) = s1 == s2
addressMatches _ _ = False 

combineMatchingMaps keyMatches combine map1 map2 =
    [ combine v1 v2 | (k1, v1) <- Map.toList map1, (k2, v2) <- Map.toList map2, keyMatches k1 k2]
  

schemeSoundness :: Spec
schemeSoundness = describe "Scheme soundness" $ mapM_ (soundBenchmark
            "Scheme analysis"
            defaultTimeout
            (return . Scheme.cpAnalyze)            -- analyze
            (return . Concrete.runInterpreter)     -- concrete interpreter
            (\(_, concreteSto) (abstractSto, _) -> -- the analysis result should subsume the concrete result
                 return $ and $ combineMatchingMaps addressMatches (flip gamma) concreteSto abstractSto )
            (return . Syntax.Scheme.parseString')) SchemeBenchmarks.soundnessBenchmarks

----------------------
-- PYTHON SOUNDNESS --
----------------------

pythonSoundness :: Spec
pythonSoundness = describe "Python soundness" $ mapM_ (soundBenchmark
            "Python analysis"
            defaultTimeout
            (return . analyzeCP . snd)           -- analyze
            (evalPythonProgram . fst)            -- concrete interpreter
            (\concreteSto (_, abstractSto, _) -> -- the analysis result should subsume the concrete result
                return True) -- TODO
            (\ program -> return (fmap (program,) $ maybeToEither "parse error" $ parse "" program))) 
            PythonBenchmarks.soundnessBenchmarks

spec :: Spec 
spec = do
    schemeSoundness
    pythonSoundness
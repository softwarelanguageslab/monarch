{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module SoundnessSpec(spec) where 

import Test 

import qualified Data.TypeLevel.HMap as HMap
import Domain.Scheme.Modular (SchemeKey(..), SchemeVal(..))
import qualified Data.Vector as Vector

import Domain.Class
import qualified Lattice.Class as Lattice
import qualified Benchmark.Scheme.Programs as SchemeBenchmarks
import qualified Analysis.Scheme.Simple as Scheme
import qualified Syntax.Scheme
import qualified Interpreter.Scheme as Concrete
import qualified Data.Map as Map
import Analysis.Scheme
import qualified Domain.Scheme.Store as AbstractStore
import Analysis.Scheme.Simple (V)
import Syntax.Ide
import Domain.Core.PairDomain.Class
import Domain.Scheme.Class (PaiDom, SchemeDomain (nil, symbol))

import Analysis.Python.Fixpoint (analyzeCP)
import qualified Benchmark.Python.Programs as PythonBenchmarks
import Domain.Python.Syntax (parse)
import Lattice (BottomLattice(bottom), joins)
import Domain (SimplePair(..))
import Domain.Core.VectorDomain.Class (VectorDomain(makeVector))
import qualified Benchmark.Scheme.Programs as SchemeBenchmarks

maybeToEither :: e -> Maybe a -> Either e a 
maybeToEither e Nothing = Left e 
maybeToEither _ (Just a) = Right a

instance Domain V Concrete.SchemeValue where 
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
instance Domain (AbstractStore.StoreVal V) Concrete.SchemeValue where 
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
            (return . Scheme.cpAnalyze) -- analyze
            (return . Concrete.runInterpreter) -- concrete interpreter
            (\(_, concreteSto) (abstractSto, _) -> -- the analysis result should subsume the concrete result
                 return $ and $ combineMatchingMaps addressMatches (flip gamma) concreteSto abstractSto )
            (return . Syntax.Scheme.parseString')) SchemeBenchmarks.soundnessBenchmarks


-- pythonSoundness :: Spec
-- pythonSoundness = describe "Python soundness" $ mapM_ (soundBenchmark
--             "Python analysis"
--             defaultTimeout
--             (return . analyzeCP) -- analyze
--             (return . analyzeCP) -- concrete interpreter
--             (\(_, concreteSto, _) (_, abstractSto, _) -> -- the analysis result should subsume the concrete result
--                 return True)
--             (return . (maybeToEither "parse error" . parse ""))) PythonBenchmarks.quick

spec :: Spec 
spec = do
    schemeSoundness
    -- pythonSoundness
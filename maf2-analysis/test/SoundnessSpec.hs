{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module SoundnessSpec(spec) where 

-- general imports
import qualified Data.Vector as Vector
import qualified Data.Map as Map

import Test 
import Domain.Class
import Domain.Core.VectorDomain.Class (VectorDomain(makeVector))
import Domain.Core.VectorDomain.PIVector (PIVector)
import Domain.Core.PairDomain.Class
import Domain.Core.PairDomain.SimplePair (SimplePair)
import Lattice.ConstantPropagationLattice (CP)
import Lattice (BottomLattice(bottom), TopLattice(top), joins)
import qualified Data.TypeLevel.HMap as HMap
-- scheme
import Domain.Scheme.Modular (SchemeKey(..), SchemeVal(..), SchemeString(..))
import Analysis.Scheme
import qualified Analysis.Scheme.Simple as Scheme
import qualified Syntax.Scheme
import qualified Interpreter.Scheme as Concrete
import qualified Domain.Scheme.Store as AbstractStore
import Domain.Scheme.Class (SchemeDomain (nil, symbol))
import qualified Benchmark.Scheme.Programs as SchemeBenchmarks
-- python
import Analysis.Python.Fixpoint.Taint (analyzeCP)
import Domain.Python.Syntax (parse)
import Interpreter.Python.Eval (evalPythonProgram)
import qualified Benchmark.Python.Programs as PythonBenchmarks

----------------------
-- SCHEME SOUNDNESS --
----------------------
instance Domain Scheme.V Concrete.SchemeValue where 
    inject (Concrete.SchemePtr _) = bottom -- todo
    inject (Concrete.SchemeInt int) = inject int
    inject (Concrete.SchemeRea rea) = inject rea
    inject (Concrete.SchemeBoo boo) = inject boo
    inject (Concrete.SchemeCha cha) = inject cha 
    inject (Concrete.SchemeSym sym) = symbol sym
    inject (Concrete.SchemeClo (_, _)) = bottom -- todo
    inject Concrete.SchemeNil = nil
    inject Concrete.SchemeUns = SchemeVal $ HMap.singleton @UnspKey ()
    inject (Concrete.SchemePrim s) = SchemeVal $ HMap.singleton @PrimKey $ inject s
    inject (Concrete.SchemePair _ _) = error "should not happen"
    inject (Concrete.SchemeVector _) = error "should not happen"
    inject (Concrete.SchemeString _) = error "should not happen"

-- | The store is split into four disjoint regions, each with its own address
-- and value domain. We provide a @Domain@ instance over the concrete type of
-- every region so that a concrete value can be injected into the corresponding
-- abstract sub-domain and compared with @gamma@. Concrete values that are not
-- stored in a given region inject to @bottom@ (and therefore never spuriously
-- fail soundness).

-- | Pairs: @PaiDom V = SimplePair V@.
instance Domain (SimplePair Scheme.V) Concrete.SchemeValue where
    inject (Concrete.SchemePair v1 v2) = cons (inject v1) (inject v2)
    inject _ = bottom

-- | Vectors: @VecDom V = PIVector V V V (SchemeString (CP String)) V@.
instance Domain (PIVector Scheme.V Scheme.V Scheme.V (SchemeString (CP String)) Scheme.V) Concrete.SchemeValue where
    inject (Concrete.SchemeVector vector) = makeVector
            (inject $ Concrete.SchemeInt $ fromIntegral $ Vector.length vector)
            (joins $ map inject $ Vector.toList vector)
    inject _ = bottom

-- | Strings: @StrDom V = SchemeString (CP String)@. @CP@ has no bottom, so
-- non-string values (which never live in the string store) inject to the top
-- string, keeping the comparison trivially sound for them.
instance Domain (SchemeString (CP String)) Concrete.SchemeValue where
    inject (Concrete.SchemeString s) = inject s
    inject _ = SchemeString top

addressMatchesVar :: Concrete.CAdr -> AbstractStore.VarAdr K -> Bool
addressMatchesVar (Concrete.VarAdr (_, id1)) (AbstractStore.VrrAdr id2 _) = id1 == id2
addressMatchesVar (Concrete.PrmAdr s1) (AbstractStore.PrrAdr s2) = s1 == s2
addressMatchesVar _ _ = False

-- | Heap addresses (pairs, vectors and strings) are all allocated at an
-- expression (the allocation site), so they share the same matching logic.
addressMatchesPai :: Concrete.CAdr -> AbstractStore.PaiAdr Syntax.Scheme.Exp K -> Bool
addressMatchesPai (Concrete.CAdr (_, e1)) (AbstractStore.PaiAdr e2 _) = e1 == e2
addressMatchesPai _ _ = False

addressMatchesVec :: Concrete.CAdr -> AbstractStore.VecAdr Syntax.Scheme.Exp K -> Bool
addressMatchesVec (Concrete.CAdr (_, e1)) (AbstractStore.VecAdr e2 _) = e1 == e2
addressMatchesVec _ _ = False

addressMatchesStr :: Concrete.CAdr -> AbstractStore.StrAdr Syntax.Scheme.Exp K -> Bool
addressMatchesStr (Concrete.CAdr (_, e1)) (AbstractStore.StrAdr e2 _) = e1 == e2
addressMatchesStr _ _ = False

combineMatchingMaps :: (k1 -> k2 -> Bool) -> (v1 -> v2 -> a) -> Map.Map k1 v1 -> Map.Map k2 v2 -> [a]
combineMatchingMaps keyMatches combine map1 map2 =
    [ combine v1 v2 | (k1, v1) <- Map.toList map1, (k2, v2) <- Map.toList map2, keyMatches k1 k2]


-- | The concrete store maps every address to a single @SchemeValue@. For each
-- disjoint abstract sub-store we check that the abstract value subsumes every
-- concrete value stored at a matching address.
schemeSoundness :: Spec
schemeSoundness = describe "Scheme soundness" $ mapM_ (soundBenchmark
            "Scheme analysis"
            defaultTimeout
            (return . Scheme.cpAnalyze)            -- analyze
            (return . Concrete.runInterpreter)     -- concrete interpreter
            (\(_, concreteSto) (abstractSto, _) -> -- the analysis result should subsume the concrete result
                 return $ and $ concat
                    [ combineMatchingMaps addressMatchesVar (flip gamma) concreteSto (AbstractStore._varStore abstractSto)
                    , combineMatchingMaps addressMatchesPai (flip gamma) concreteSto (AbstractStore._paiStore abstractSto)
                    , combineMatchingMaps addressMatchesVec (flip gamma) concreteSto (AbstractStore._vecStore abstractSto)
                    , combineMatchingMaps addressMatchesStr (flip gamma) concreteSto (AbstractStore._strStore abstractSto)
                    ])
            (return . Syntax.Scheme.parseString')) SchemeBenchmarks.soundnessBenchmarks

----------------------
-- PYTHON SOUNDNESS --
----------------------

pythonSoundness :: Spec
pythonSoundness = describe "Python soundness" $ mapM_ (soundBenchmark
            "Python analysis"
            defaultTimeout
            (return . ignoreDiagnostics . analyzeCP . snd)           -- analyze
            (evalPythonProgram . fst)            -- concrete interpreter
            (\_ (_, _, _) -> -- the analysis result should subsume the concrete result
                return True) -- TODO
            (\ program -> return (fmap (program,) $ maybeToEither "parse error" $ parse "" program))) 
            PythonBenchmarks.soundnessBenchmarks
    where ignoreDiagnostics (a, b, c, _) = (a, b, c)

spec :: Spec 
spec = do
    schemeSoundness
    pythonSoundness

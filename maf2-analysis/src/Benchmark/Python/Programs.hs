-- | Scheme benchmark programs
module Benchmark.Python.Programs where 

-- | Quick benchmarks to find issues with the analysis
quick :: [String]
quick = [
   "programs/python/class.py",
   "programs/python/Counter.py",
   "programs/python/debug.py",
--    "programs/python/exceptions-2.py", --Address [3:15 with context [8:9,13:1]] not found
   "programs/python/exceptions.py",
   "programs/python/factorial.py",
   "programs/python/flow-sensitivity.py",
   "programs/python/for.py",
   "programs/python/kcfa-1.py",
   "programs/python/object.py",
   "programs/python/sample_001.py",
--    "programs/python/sample_002.py", --Var previously declared NonLocalScope is now declared LocalScope
   "programs/python/taint-2.py",
   "programs/python/taint.py"
   ]

scoping :: [String]
scoping = [
    --"programs/python/tests/scoping/global_var.py", --Var previously declared GlobalScope is now declared LocalScope
    -- "programs/python/tests/scoping/nonlocal_var.py" --Var previously declared GlobalScope is now declared LocalScope
    ]

allBenchmarks :: [String]
allBenchmarks = quick 
                ++ scoping

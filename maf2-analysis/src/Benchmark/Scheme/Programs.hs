-- | Scheme benchmark programs
module Benchmark.Scheme.Programs(quick, various, allBenchmarks, soundnessBenchmarks) where 

import Data.List ((\\))

-- | Quick benchmarks to find issues with the analysis
quick :: [String]
quick = [
   "programs/R5RS/various/fib.scm",
   "programs/R5RS/various/count.scm",
   "programs/R5RS/various/infinite-1.scm",
   "programs/R5RS/various/infinite-2.scm",
   "programs/R5RS/various/infinite-3.scm",
   "programs/R5RS/various/widen.scm",
   "programs/R5RS/various/map.scm"
   ]

various :: [String]
various = [
   -- "programs/R5RS/various/SICP-compiler.scm", -- cond
   "programs/R5RS/various/blur.scm",
   "programs/R5RS/various/bound-precision.scm",
   "programs/R5RS/various/church-2-num.scm",
   "programs/R5RS/various/church-6.scm",
   "programs/R5RS/various/church.scm",
   "programs/R5RS/various/collatz.scm",
   "programs/R5RS/various/count.scm",
   "programs/R5RS/various/define.scm",
   "programs/R5RS/various/eta.scm",
   "programs/R5RS/various/example.scm",
   "programs/R5RS/various/fact.scm",
   "programs/R5RS/various/fib.scm",
   -- "programs/R5RS/various/foo.scm", -- cond
   -- "programs/R5RS/various/four-in-a-row.scm", -- Unrecognized expression3.1415
   "programs/R5RS/various/gcipd.scm",
   -- "programs/R5RS/various/grid.scm", -- make-vector
   "programs/R5RS/various/inc.scm",
   "programs/R5RS/various/infinite-1.scm",
   "programs/R5RS/various/infinite-2.scm",
   "programs/R5RS/various/infinite-3.scm",
   "programs/R5RS/various/kcfa2.scm",
   "programs/R5RS/various/kcfa3.scm",
   "programs/R5RS/various/lambda-update.scm",
   "programs/R5RS/various/let.scm",
   "programs/R5RS/various/loop2.scm",
   "programs/R5RS/various/map.scm",
   -- "programs/R5RS/various/mceval.scm", -- no such variable "error"
   "programs/R5RS/various/mut-rec.scm",
   "programs/R5RS/various/my-list.scm",
   "programs/R5RS/various/my-test.scm",
   "programs/R5RS/various/nested-defines.scm",
   "programs/R5RS/various/primtest.scm",
   "programs/R5RS/various/procedure.scm",
   -- "programs/R5RS/various/regex.scm", -- cond 
   "programs/R5RS/various/rotate.scm",
   -- "programs/R5RS/various/rsa.scm", -- error
   "programs/R5RS/various/sat.scm",
   -- "programs/R5RS/various/scm2c.scm", -- TODO: fix multiline strings
   -- "programs/R5RS/various/scm2java.scm", number->string
   "programs/R5RS/various/splitargs.scm",
   "programs/R5RS/various/sq.scm",
   "programs/R5RS/various/string.scm",
   "programs/R5RS/various/strong-update.scm",
   "programs/R5RS/various/sym.scm",
   "programs/R5RS/various/test.scm",
   "programs/R5RS/various/widen.scm",
   "programs/R5RS/various/work.scm"
   ]

gabriel :: [String]
gabriel = [
   "programs/R5RS/gabriel/boyer.scm",
   -- "programs/R5RS/gabriel/browse.scm", -- do
   -- "programs/R5RS/gabriel/cpstak.scm", -- Address VarAdr tak:327:11 [] not found
   -- "programs/R5RS/gabriel/dderiv.scm", -- error
   -- "programs/R5RS/gabriel/deriv.scm", -- error
   -- "programs/R5RS/gabriel/destruc.scm", -- do 
   "programs/R5RS/gabriel/diviter.scm",
   "programs/R5RS/gabriel/divrec.scm",
   -- "programs/R5RS/gabriel/puzzle.scm", -- make-vector
   -- "programs/R5RS/gabriel/triangl.scm", -- cond
   "programs/R5RS/gabriel/takl.scm"
   ]

gambit :: [String]
gambit = [
   -- "programs/R5RS/gambit/array1.scm", -- make-vector, do
   -- "programs/R5RS/gambit/browse.scm", -- do 
   -- "programs/R5RS/gambit/cat.scm", -- open-input-file
   -- "programs/R5RS/gambit/compiler.scm", -- could not parse "\"SExpParser\" (line 348, column 24):\nunexpected \".\"\nexpecting letter or digit"
   -- "programs/R5RS/gambit/ctak.scm", -- call-with-current-continuation
   -- "programs/R5RS/gambit/deriv.scm", -- cond
   -- "programs/R5RS/gambit/destruc.scm", -- do 
   "programs/R5RS/gambit/diviter.scm",
   -- "programs/R5RS/gambit/earley.scm", -- make-vector
   -- "programs/R5RS/gambit/fibc.scm", -- call-with-current-continuation
   "programs/R5RS/gambit/graphs.scm",
   -- "programs/R5RS/gambit/lattice.scm", -- cond 
   -- "programs/R5RS/gambit/matrix.scm", -- do 
   -- "programs/R5RS/gambit/mazefun.scm", -- no such variable "lsts"
   -- "programs/R5RS/gambit/nboyer.scm", -- no such variable "args"
   -- "programs/R5RS/gambit/nqueens.scm", -- cond
   -- "programs/R5RS/gambit/paraffins.scm", -- make-vector
   "programs/R5RS/gambit/perm9.scm",
   -- "programs/R5RS/gambit/peval.scm", -- cond
   "programs/R5RS/gambit/primes.scm",
   -- "programs/R5RS/gambit/puzzle.scm", -- make-vector
   -- "programs/R5RS/gambit/sboyer.scm", --  no such variable "args"
   -- "programs/R5RS/gambit/scheme.scm", -- could not parse "unrecognized expression ()"
   -- "programs/R5RS/gambit/slatex.scm", -- could not parse "\"SExpParser\" (line 542, column 36):\nunexpected \"#\"\nexpecting letter or digit"
   -- "programs/R5RS/gambit/string.scm", -- do 
   "programs/R5RS/gambit/sum.scm",
   -- "programs/R5RS/gambit/sumloop.scm", -- do 
   -- "programs/R5RS/gambit/tail.scm", -- open-input-file
   -- "programs/R5RS/gambit/trav1.scm", -- do
   -- "programs/R5RS/gambit/triangl.scm", -- make-vector
   -- "programs/R5RS/gambit/wc.scm", -- open-input-file
   "programs/R5RS/gambit/tak.scm"
   ]

ad :: [String]
ad = [
   -- "programs/R5RS/ad/abstrct.scm", -- make-vector
   -- "programs/R5RS/ad/all.scm", -- cond
   -- "programs/R5RS/ad/bfirst.scm", -- no such variable "create-graph"
   -- "programs/R5RS/ad/bst.scm", -- variable amount of arguments (?)
   -- "programs/R5RS/ad/btree.scm",
   -- "programs/R5RS/ad/bubsort.scm",
   -- "programs/R5RS/ad/dict.scm",
   -- "programs/R5RS/ad/heap.scm",
   -- "programs/R5RS/ad/inssort.scm",
   -- "programs/R5RS/ad/linear.scm",
   "programs/R5RS/ad/list.scm"
   -- "programs/R5RS/ad/mesort.scm"
   -- "programs/R5RS/ad/prioq.scm"
   -- "programs/R5RS/ad/qsort.scm"
   -- "programs/R5RS/ad/qstand.scm"
   -- "programs/R5RS/ad/queue.scm"
   -- "programs/R5RS/ad/quick.scm"
   -- "programs/R5RS/ad/RBtreeADT.scm"
   -- "programs/R5RS/ad/selsort.scm"
   -- "programs/R5RS/ad/stack.scm"
   -- "programs/R5RS/ad/stspaceCODE.scm"
  ]

icp1 :: [String]
icp1 = [
   -- "programs/R5RS/icp/icp_1c_multiple-dwelling.scm"
   -- "programs/R5RS/icp/icp_1c_ontleed.scm"
   -- "programs/R5RS/icp/icp_1c_prime-sum-pair.scm"
   -- "programs/R5RS/icp/icp_2_aeval.scm"
   -- "programs/R5RS/icp/icp_3_leval.scm"
   -- "programs/R5RS/icp/icp_5_regsim.scm"
   -- "programs/R5RS/icp/icp_6_stopandcopy_scheme.scm"
   -- "programs/R5RS/icp/icp_7_eceval.scm"
   -- "programs/R5RS/icp/icp_8_compiler.scm"
   ]

soundnessBenchmarks :: [String]
soundnessBenchmarks = allBenchmarks \\ [
   -- infinite:
   "programs/R5RS/various/infinite-1.scm",
   "programs/R5RS/various/infinite-2.scm",
   "programs/R5RS/various/infinite-3.scm",
   -- do:
   "programs/R5RS/gambit/diviter.scm",
   "programs/R5RS/gambit/perm9.scm",
   "programs/R5RS/gabriel/diviter.scm",
   -- slow programs: 
   "programs/R5RS/various/my-test.scm", 
   "programs/R5RS/gambit/tak.scm",
   "programs/R5RS/gabriel/takl.scm",
   "programs/R5RS/various/primtest.scm",
   -- cond: 
   "programs/R5RS/gabriel/boyer.scm",
   -- make-vector: 
   "programs/R5RS/ad/list.scm"
   ]

allBenchmarks :: [String]
allBenchmarks = [
   "programs/simple/fac.scm",
   "programs/simple/fib.scm"
   ] 
   ++ various 
   ++ gabriel 
   ++ ad 
   ++ icp1
   ++ gambit

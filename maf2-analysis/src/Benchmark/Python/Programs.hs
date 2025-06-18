-- | Scheme benchmark programs
module Benchmark.Python.Programs where 
import Benchmark.Scheme.Programs (soundnessBenchmarks)
import Data.List

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

mopsaBasic :: [String]
mopsaBasic = [
   "programs/python/mopsa-basic/arg_mismatch.py",
   "programs/python/mopsa-basic/attribute_error.py",
   "programs/python/mopsa-basic/attribute.py",
   "programs/python/mopsa-basic/basic_types.py",
   "programs/python/mopsa-basic/broken_loop.py",
   "programs/python/mopsa-basic/class_constructor.py",
   "programs/python/mopsa-basic/class_inheritance.py",
   "programs/python/mopsa-basic/class_static_method.py",
   -- "programs/python/mopsa-basic/dict_loop.py", -- COMPILER ERROR: eval unary op
   "programs/python/mopsa-basic/dict.py",
   "programs/python/mopsa-basic/function_default_args.py",
   -- "programs/python/mopsa-basic/function_side_effect.py", -- Var previously declared GlobalScope is now declared LocalScope
   -- "programs/python/mopsa-basic/generator_loop_2.py", -- COMPILER ERROR: eval unary op
   -- "programs/python/mopsa-basic/generator_loop.py", -- COMPILER ERROR: eval unary op
   -- "programs/python/mopsa-basic/generator_rel_2.py", -- COMPILER ERROR: assertion statement
   -- "programs/python/mopsa-basic/generator_rel.py", -- COMPILER ERROR: eval yield
   -- "programs/python/mopsa-basic/generator.py", -- COMPILER ERROR: eval yield
   "programs/python/mopsa-basic/incorrect_raise.py",
   "programs/python/mopsa-basic/int.py",
   "programs/python/mopsa-basic/lambda.py",
   "programs/python/mopsa-basic/list_append.py",
   -- "programs/python/mopsa-basic/list_comprehension.py", -- COMPILER ERROR: eval list comprehension
   -- "programs/python/mopsa-basic/list_in_loop.py", -- COMPILER ERROR: eval sliced
   "programs/python/mopsa-basic/list_insert_pop.py",
   -- "programs/python/mopsa-basic/list_insert.py", -- COMPILER ERROR: eval unary op
   "programs/python/mopsa-basic/list_len.py",
   -- "programs/python/mopsa-basic/list_of_tuples.py", -- COMPILER ERROR: eval sliced
   "programs/python/mopsa-basic/list_op.py",
   "programs/python/mopsa-basic/list_pop.py",
   -- "programs/python/mopsa-basic/list_slice.py", -- unsupported expression as LHS in assignment
   "programs/python/mopsa-basic/list.py",
   -- "programs/python/mopsa-basic/module_math.py", -- import not supported
   "programs/python/mopsa-basic/multi_compare.py",
   "programs/python/mopsa-basic/num_loop.py",
   -- "programs/python/mopsa-basic/object_in_condition.py", -- COMPILER ERROR: eval unary op
   -- "programs/python/mopsa-basic/object_in_loop.py", -- import not supported
   "programs/python/mopsa-basic/operators.py",
   "programs/python/mopsa-basic/range_iter.py",
   "programs/python/mopsa-basic/range_to_list.py",
   -- "programs/python/mopsa-basic/range.py", -- COMPILER ERROR: eval unary op
   "programs/python/mopsa-basic/recency.py",
   "programs/python/mopsa-basic/sets.py",
   "programs/python/mopsa-basic/try_raise.py",
   "programs/python/mopsa-basic/try_super_raise.py",
   -- "programs/python/mopsa-basic/tuple_assign.py", -- unsupported expression as LHS in assignment
   "programs/python/mopsa-basic/type_coercion.py",
   "programs/python/mopsa-basic/type_mismatch.py",
   "programs/python/mopsa-basic/uncaught_except.py",
   "programs/python/mopsa-basic/unreachable_raise.py",
   "programs/python/mopsa-basic/while_else.py"
   ]

scoping :: [String]
scoping = [
    -- "programs/python/tests/scoping/global_var.py", --Var previously declared GlobalScope is now declared LocalScope
    -- "programs/python/tests/scoping/nonlocal_var.py" --Var previously declared GlobalScope is now declared LocalScope
    ]

soundnessBenchmarks :: [String]
soundnessBenchmarks = allBenchmarks \\ 
                     [
                        "programs/python/debug.py", -- Database() is undefined
                        "programs/python/exceptions.py", -- raise Exception()
                        "programs/python/taint.py" -- no attribute __taint__ 
                     ]

allBenchmarks :: [String]
allBenchmarks = quick 
                ++ scoping
                ++ mopsaBasic

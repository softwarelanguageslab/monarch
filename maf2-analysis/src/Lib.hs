-- MAF -- Monadic Analysis Framework
--
-- This library contains the framework-part of the research artifact called MAF. 
-- The library is structured as follows:
-- - Syntax: contains the syntax of the languages under-analysis. Currently 
--   all languages are implemented as extensions of a Scheme-like language and 
--   are part of the same abstract syntax tree. 
-- - Domain: contains typeclasses and their implementations for representing 
--   abstract domains.
-- - Analysis: contains the semantics for each language and instantiations for their analysis.
--
-- Each directory may contain subdirectories pertaining to the specific language under analysis.
-- For example a modulo called `Analysis.Actors.Semantics` provides the semantics for an actor extension
-- of the base semantics in `Analysis.Semantics`.
--
-- For running and benchmarking MAF see the `app` directory, for testing the `test` directory.
module Lib ( ) where


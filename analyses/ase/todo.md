<!--toc:start-->
- [ASE TODO
---------](#ase-todo)
- [General TODO](#general-todo)
- [Program Specific TODO](#program-specific-todo)
<!--toc:end-->

ASE TODO
---------

## General TODO

- [X] allocate the TAdr in the store, same for VAdr and SAdr
- [X] Create a TopLifted instance of the Scheme lattice, this 
will help us in achieving the most generic values that could 
be returned from the model in our symbolic solver
- [X] check why `freshmodel.scm` does not seem to terminate on the local variant 
of the analysis. ==> Probably too many states

## Program Specific TODO

- [ ] games_tetris.rkt: Error variable SymbolicVariable 4598:65-4598:65
- [ ] mochi_fold_div.rkt: Error variable SymbolicVariable 2294:65-2294:65
- [X] mochi_hors.rkt: no such variable "p" => usage of unicode lambda symbol
- [X] mochi_l_zip_zipunzip.rkt: undefined variable "x" => usage of unicode lambda symbol
- [X] games_zombie.rkt: duplicate definitions of "abs"
- [X] mochi_fold_div.rkt: unsupported literal "()", probably translation related
- [X] mochi_nth0.rkt: src/Symbolic/SMT.hs:(97,1)-(127,33): Non-exhaustive patterns in function translateAtomic --> Related to the translation of "Fail" which should always be translated to "false"

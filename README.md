MONARCH: A MONadic ARCHitecture for Static Analyses through Abstract Definitional Interpreters
------------------------------------------------------------------------------------------------

Monarch is a static analysis framework for developing static analyses based on the 
abstract definitional interpreters paradigm. This artifact contains the source 
code of the framework and reflects the state of the framework at 2025-05-15.

The latest version of the framework is available at https://github.com/softwarelanguageslab/monarch.

## Setting up

### Using the Docker image

This artifact is also provided as a Docker image (in `image.tar.gz`) that 
includes all the tools with their correct versions in addition to 
a compiled executable that can be used to test the Python and Scheme analyses 
provided by the framework.

The Docker image can be used as follows (for arm architectures use `arm64` instead of `x86_64`):
```
$ docker load < image_x86_64.tar.gz
$ docker run -it monarch 
Missing: COMMAND

Usage: maf-exe COMMAND

  Monarch: A MONadic ARCHitecture for Static Analyses through Abstract
  Definitional Interpreters
```

The Docker image contains all necessary source and test files 
from the main repository. Therefore, there is no need to mount 
any source files as volumes inside the docker container.

The docker image exposes the `maf-exe` binary as its entrypoint which expects a subcommand (ie., the analysis to run) and some optional arguments (e.g.., the file to analyze). For instance to analyze a Python file, the following command may be used:

```
$ docker run -it monarch python -f maf2-analysis/programs/python/Counter.py
```

For changing the implementation of the framework, or adding your own analysis, we recommend to either: 

* Update the implementation on the host and rebuild the Docker image from scratch. 
* Update the implementation on the host and also compile it on the host, this requires a valid installation of GHC 9.6.6 and its associates tools (cf. "Building from Source"). 
* Mount the code at `/artifact` and use the tools and minimal editor provided in the docker image.

For the last option, the following command can be used (assuming that your current working directory is this artifact):

```bash
$ docker run -v $PWD:/artifact --entrypoint /bin/bash -it monarch 
```


### Building from source

The framework can be built from source but requires a few dependencies:

* cabal: the framework was tested with cabal version 3.10
* ghc: version 9.6.6 of GHC is required for the framework to build 
successfully. 

Both of these dependencies can be easily installed using `ghcup`. To compile and 
run an analysis implemented in the framework, navigate to the `maf2-analysis` 
directory and run the following command:

```
cabal run 
```

This command runs the same code as the entrypoint of the Docker image and 
accepts the same type of arguments. However, in order to pass these 
arguments to the program rather than `cabal`, additional arguments 
to `cabal` are required. For instance, to run the Python analysis on the 
`Counter.py` file, the following command can be used: 

```
cabal run . -- python -f programs/python/Counter.py
```

## Resource Requirements

We tested the artifact on a machine with the following specifications:

* Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz
* 16GiB RAM 
* Minimum of 5GiB of disk space required

On this machine, it takes approximately 30 minutes to build the 
entire Docker image. Running the analysis takes a few seconds 
depending on the program being analyzed.

## Using the Framework

In this section we detail how the framework is structure and how an analysis 
can be constructed from its building blocks.

### Framework Structure

The framework is structured into multiple packages according to their responsibilities:

* `maf2-syntax` provides parsers and data structures (such as AST definitions) for the languages 
supported by our framework. Currently it includes support for Scheme, Python.
* `maf2-domains` provides the basic building blocks and their combinators for constructing 
abstract domains to be used by a static analysis. 
* `maf2-analysis` provides the building blocks for expressing program semantics and 
instantiating a static analysis from this program semantics.

#### Domains Package

This package mainly consists of two modules: `Lattice` and `Domain`.
The `Lattice` module provides the basic lattice type classes (in  `Lattice.Class`) such 
as `PartialOrder` and `Joinable`. Moreover, it contains instances of these type classes
for basic Haskell data types such as `Maybe` and `Set`.

The `Domain` module refers to specific abstract domain and is split similarly to the `Lattice` 
module. It contains type classes (in `Domain.Core.*.Class`) that express abstract domain-specific operations such 
as the `NumberDomain` which specifies operations such as `plus` and `minus` and also instances for 
these type classes (for example `Domain.Core.NumberDomain.ConstantPropagation`).

For implementing combinations of domains the `HMap` structure may be used (which correspond
to the `SparseLabeledProduct` from the paper). To use them to their fullest extent both 
`Data.TypeLevel.HMap` and `Lattice.HMapLattice` must be imported. The paper contains 
more details on its usage.

Finally, the `maf2-domains` package also includes abstract domains specific to 
our supported programming languages. For example, the `Domain.Python` module
contains the abstractions used by the Python analysis.

#### Analysis Package

The analysis package contains building blocks for expressing program language 
semantics as well as for instantiating an analysis. Both building blocks 
are provided in the `Analysis.Monad.*` modules. These modules define the 
type classes used for expressing language semantics as well as the monad 
transformer that are instances of these type classes.

Similar to the `maf2-domains` package, language specific semantics 
and analysis instantiations are in their own modules.
For instance, the semantics for the Scheme analysis is in `Analysis.Scheme.Semantics`, 
while the semantics for the Python semantics are in the `Analysis.Python.Semantics`.

The structure for each language-specific analysis is similar. 
Language semantics are in `Analysis.LANG.Semantics`, while its monad type class 
constraints are in `Analysis.LANG.Monad`. This module sometimes also defines 
language-specific monadic type classes and their transformers.
Static analysis instantiations are usually in the `Analysis.LANG` module,
except for Python which uses the `Analysis.Python.Fixpoint` module.

### Usage as a library

New analyses can be built on top of Monarch by embedding them into 
their own folder in the appropriate `maf2-*` package. 
An alternative, more recommended, way is to use the framework as a library
by adding it as a regular dependency to your Cabal or Stack project.

To this end, your `cabal.project` file needs to contain the following:
```yaml
with-compiler: ghc-9.6.6

source-repository-package
   type: git
   location: https://github.com/softwarelanguageslab/monarch.git
   tag: 00ca12d56341f9a1c914fefb215164be3f39fcfb
   subdir: maf2-syntax maf2-analysis maf2-domains 
           thirdparty/language-python/language-python


source-repository-package
   type: git
   location: https://github.com/bramvdbogaerde/layers-mtl.git
   tag: e02ee49ca80b419595f14399c44c61db2327b2b9

packages: .
```
The first repository package makes the Monarch framework available to your package since it is not published on Hackage. It ensures that a correct version of the `language-python` dependency is used that is compatible with Monarch.
The second repository package makes the `layers-mtl` package available, which is used internally in Monarch but not available on Hackage.
**Note that only GHC 9.6.6 is currently supported.**

The commit hashes used above point to the version of the framework bundled with this artifact (excluding the commit adding this README).

Next, you need to add the Monarch packages (i.e., `maf2-syntax`,  `maf2-domains`, `maf2-analysis`) as dependencies to your `packagename.cabal` file. Not all Monarch packages are required as dependencies however; you can add or remove packages depending on the desired functionality.

### An Analysis for a simple lambda-calculus

To get started with implementing static analyses in Monarch, we suggest the `examples/maf2-lambda` package 
as an example. This package contains an analysis for a simple lambda-calculus inspired programming language.

To run this example from the Docker container, the following command may be used:

```
docker run --entrypoint ./examples/run-lambda.sh -it monarch
```

The `examples/maf2-lambda/` contains a README with more details 
about the example. The code is also well-documented to guide 
you through implementing your own static analysis on top 
of our framework.

## Reproducing examples of the paper

The paper contains a case study of implementing a static analysis in Python and Scheme. 
The code listings presented in the paper can be found at the following locations:

* __4.1: Abstract Domain__: the implementation of the `PyObj` can be found in the `maf2-domains` package inside the `Domain.Python.Objects.PyObjHMap` module. Here, it is defined as the `PyObjHMap` on line 60. The contents of the sparse labeled product are defined as `PyPrm` just above the definition of the `PyObjHMap`. The implementation of `Values` and`SchemeValue` from the Scheme analysis can be found in the `maf2-domains` package inside the `Domain.Scheme.Modular` module. An extended version of`Values` can be found on line 128; `SchemeValue` can be found on line 160 and is named `SchemeVal` in the implementation. 
* __4.2: Semantics__: the semantics presented in the paper is spread across a set of modules, all in the `maf2-analysis` package.
    - As opposed to the presentation in the paper, the `PyM` monad is defined as type class-instance pair in the `Analysis.Python.Monad` module. Lines 62-91 define an equivalent set of constraints as those presented in the paper. The `SchemeM` monad is defined in the `Analysis.Scheme.Monad` module on line 85. The constraints presented in the paper can be found in the underlying `SchemeDomainM` (line 58) and `SchemeEM'` (line 74) monads.
    - The definition of the Python primitives is available in the `Analysis.Python.Primitives` module. Various versions of the `prim2` function presented in the paper can be found on line 150-166. The definition of the Scheme primitives is available in the `Analysis.Scheme.Primitives` module. The `fix2` function presented in the paper can be found on line 52 and `allPrimitives` on line 57.
    - The semantics for Python is defined in the `Analysis.Python.Semantics` module. The paper presents the semantics for escaping control flow. This semantics can be found at line 107 and line 39. The implementation of `pyReturnable`, which catches the escaping value and returns it, is inlined in the paper for clarity but is implemented in the `PyM` instance in the artifact. Those implementations are equivalent otherwise and use `MonadEscape` internally. The semantics for Scheme is defined in the `Analysis.Scheme.Semantics` module. 
    - The implementation of `lookupAttr`is exactly as in the paper and can be found on line 97 in the `Analysis.Python.Objects` module.
* __4.3: Analysis__: the instantiation of the Python semantics into a static analysis for Python can be found in the `Analysis.Python.Fixpoint` module. Its implementation is identical to the presentation in the paper. The instantiation of the Scheme analysis can be found in the `Analysis.Scheme` module. The `intra` and `analyze` functions can be found on lines 89 and 98, respectively.

### Executing the Python Analysis

The Python analysis in `Analyis.Python.Fixpoint` computes 
an abstraction of the program's memory. This analysis 
can be executed by running the artifact with the appropriate
set of arguments.

The command depicted below illustrates how the artifact can be invoked for executing the Python analysis: 

```
docker run -it monarch python -f maf2-analysis/programs/python/Counter.py
```

Or if the framework was installed from source:
```
maf-exe python -f maf2-analysis/programs/python/Counter.py
```

This command executes the Python analysis for file `Counter.py`. This file has the following contents:

```python
class Counter:
    def __init__(self, initial_value):
        self.value = initial_value
    def increment(self):
        self.value += 1
    def decrement(self):
        self.value -= 1
    def status(self):
        return self.value

class DoubleCounter(Counter):
    def increment(self):
        self.value += 2

def f():
    ctr = DoubleCounter(100)
    ctr.increment()
    ctr.increment()
    ctr.decrement()
    return ctr.status()

f() 
```

It essentially implements a counter that supports operations `increment`, `decrement` and `status`. When this program is executed in a concrete Python interpreter, the result of its execution is `103`.

The result of our static analysis, however, is as follows:
```

PROGRAM:

Counter@gbl = type@gbl("Counter",(),{})
lambda (): 
   Counter@gbl.__init__ = lambda (self@1,initial_value@2): 
      self@1.value = initial_value@2
   Counter@gbl.increment = lambda (self@3): 
      self@3.value = self@3.value.__add__(1)
   Counter@gbl.decrement = lambda (self@4): 
      self@4.value = self@4.value.__sub__(1)
   Counter@gbl.status = lambda (self@5): 
      return self@5.value()
DoubleCounter@gbl = type@gbl("DoubleCounter",(Counter@gbl),{})
lambda (): 
   DoubleCounter@gbl.increment = lambda (self@6): 
      self@6.value = self@6.value.__add__(2)()
f@gbl = lambda (): 
   ctr@gbl = DoubleCounter@gbl(100)
   ctr@gbl.increment()
   ctr@gbl.increment()
   ctr@gbl.decrement()
   return ctr@gbl.status()
f@gbl()

RESULTS PER COMPONENT:

          <main> | [[None]]
      <func 1:1> | [[None]]
      <func 2:5> | [[None]]
      <func 4:5> | [[None]]
      <func 6:5> | [[None]]
      <func 8:5> | [[5:9],[7:9],[13:9],[16:25]]
     <func 11:1> | [[None]]
     <func 12:5> | [[None]]
     <func 15:1> | [[5:9],[7:9],[13:9],[16:25]]

OBJECT STORE RESULTS:

         [5:9] | {__class__ → [[TypeObject BoundType]], 
                  @BndPrm → fromList [([5:9],[[PrimObject IntAdd]]),
                                      ([7:9],[[PrimObject IntAdd]]),
                                      ([13:9],[[PrimObject IntAdd]]),
                                      ([16:25],[[PrimObject IntAdd]])]}
         [5:9] | {__class__ → [[TypeObject IntType]], @IntPrm → Top}
         [7:9] | {__class__ → [[TypeObject BoundType]], 
                  @BndPrm → fromList [([5:9],[[PrimObject IntSub]]),
                                      ([7:9],[[PrimObject IntSub]]),
                                      ([13:9],[[PrimObject IntSub]]),
                                      ([16:25],[[PrimObject IntSub]])]}
         [7:9] | {__class__ → [[TypeObject IntType]], @IntPrm → Top}
        [13:9] | {__class__ → [[TypeObject BoundType]], 
                  @BndPrm → fromList [([5:9],[[PrimObject IntAdd]]),
                                      ([7:9],[[PrimObject IntAdd]]),
                                      ([13:9],[[PrimObject IntAdd]]),
                                      ([16:25],[[PrimObject IntAdd]])]}
        [13:9] | {__class__ → [[TypeObject IntType]], @IntPrm → Top}
       [16:11] | {__class__ → [[11:1:ClsNew]], ?value → [[5:9],[7:9],[13:9],[16:25]]}
[16:11:IniBnd] | {__class__ → [[TypeObject BoundType]], 
                  @BndPrm → fromList [([16:11],[[2:5],[PrimObject ObjectInit]])]}
       [16:25] | {__class__ → [[TypeObject IntType]], @IntPrm → Constant 100}
        [17:5] | {__class__ → [[TypeObject BoundType]], 
                  @BndPrm → fromList [([16:11],[[4:5],[12:5]])]}
        [18:5] | {__class__ → [[TypeObject BoundType]], 
                  @BndPrm → fromList [([16:11],[[4:5],[12:5]])]}
        [19:5] | {__class__ → [[TypeObject BoundType]], 
                  @BndPrm → fromList [([16:11],[[6:5]])]}
       [20:12] | {__class__ → [[TypeObject BoundType]],
                  @BndPrm → fromList [([16:11],[[8:5]])]}
         [1:1] | {__class__ → [[TypeObject CloType]], @CloPrm → fromList [<func@1:1>]}
  [1:1:FrmTag] | {__class__ → [[TypeObject FrameType]]}
  [1:1:ClsStr] | {__class__ → [[TypeObject StringType]], @StrPrm → Constant "Counter"}
  [1:1:ClsTup] | {__class__ → [[TypeObject TupleType]], @TupPrm → CPList [] 0 []}
  [1:1:ClsDct] | {__class__ → [[TypeObject DictionaryType]], 
                   @DctPrm → CPDict (fromList []) (fromList []) []}
  [1:1:ClsNew] | {__class__ → [[TypeObject TypeType]], 
                  ?__init__ → [[2:5]], ?__mro__ → [[1:1:IniCll]],
                  ?__name__ → [[1:1:ClsStr]], ?decrement → [[6:5]], 
                  ?increment → [[4:5]], ?status → [[8:5]]}
  [1:1:IniBnd] | {__class__ → [[TypeObject BoundType]],
                  @BndPrm → fromList [([1:1:ClsNew],[[PrimObject TypeInit]])]}
  [1:1:IniCll] | {__class__ → [[TypeObject TupleType]], 
                  @TupPrm → CPList [[[1:1:ClsNew]],
                                     [[TypeObject ObjectType]]] 2 
                                     [[1:1:ClsNew],[TypeObject ObjectType]]}
         [2:5] | {__class__ → [[TypeObject CloType]], 
                  @CloPrm → fromList [<func@2:5>]}
  [2:5:FrmTag] | {__class__ → [[TypeObject FrameType]], 
                  ?initial_value → [[16:25]],
                  ?self → [[16:11]]}
         [4:5] | {__class__ → [[TypeObject CloType]], 
                  @CloPrm → fromList [<func@4:5>]}
  [4:5:FrmTag] | {__class__ → [[TypeObject FrameType]], 
                  ?self → [[16:11]]}
         [6:5] | {__class__ → [[TypeObject CloType]], 
                  @CloPrm → fromList [<func@6:5>]}
  [6:5:FrmTag] | {__class__ → [[TypeObject FrameType]], 
                  ?self → [[16:11]]}
            [8:5] | {__class__ → [[TypeObject CloType]], 
                     @CloPrm → fromList [<func@8:5>]}
     [8:5:FrmTag] | {__class__ → [[TypeObject FrameType]], 
                     ?self → [[16:11]]}
           [11:1] | {__class__ → [[TypeObject CloType]], 
                     @CloPrm → fromList [<func@11:1>]}
    [11:1:FrmTag] | {__class__ → [[TypeObject FrameType]]}
    [11:1:ClsStr] | {__class__ → [[TypeObject StringType]],
                     @StrPrm → Constant "DoubleCounter"}
    [11:1:ClsTup] | {__class__ → [[TypeObject TupleType]],                        
                     @TupPrm → CPList [[[1:1:ClsNew]]] 1 [[1:1:ClsNew]]}
    [11:1:ClsDct] | {__class__ → [[TypeObject DictionaryType]],
                     @DctPrm → CPDict (fromList []) (fromList []) []}
    [11:1:ClsNew] | {__class__ → [[TypeObject TypeType]], 
                     ?__mro__ → [[11:1:IniCll]], ?__name__ → [[11:1:ClsStr]], 
                     ?increment → [[12:5]]}
    [11:1:IniBnd] | {__class__ → [[TypeObject BoundType]], 
                     @BndPrm → fromList [([11:1:ClsNew],[[PrimObject TypeInit]])]}
    [11:1:IniCll] | {__class__ → [[TypeObject TupleType]],
                     @TupPrm → CPList [[[11:1:ClsNew]],
                                        [[1:1:ClsNew]],
                                        [[TypeObject ObjectType]]] 3 
                                        [[1:1:ClsNew],
                                        [11:1:ClsNew],[TypeObject ObjectType]]}
           [12:5] | {__class__ → [[TypeObject CloType]], @CloPrm → fromList [<func@12:5>]}
    [12:5:FrmTag] | {__class__ → [[TypeObject FrameType]], ?self → [[16:11]]}
           [15:1] | {__class__ → [[TypeObject CloType]], @CloPrm → fromList [<func@15:1>]}
    [15:1:FrmTag] | {__class__ → [[TypeObject FrameType]]}
           [5:23] | {__class__ → [[TypeObject IntType]], @IntPrm → Constant 1}
           [7:23] | {__class__ → [[TypeObject IntType]], @IntPrm → Constant 1}
          [13:23] | {__class__ → [[TypeObject IntType]], @IntPrm → Constant 2}

```


The output of the analysis consists of three parts. 
First, a simplified version of the program is shown, depicting 
what the analysis uses as its input. 
The second part depicts the result for each component (i.e., function call)
in the program. The final part depicts a *store* which lists all abstact memory addresses 
and their corresponding values.

The analysis uses the *allocation site* as the abstraction for memory addresses. 
Thus, an address such as `[12:1]` represents an address of a memory chunck 
allocated at line 12, column 5.

The component `<func 15:1>` corresponds to results of a function call to `f`. 
The result is a set of pointers `[[5:9],[7:9],[13:9],[16:25]]` to the possible 
return values of `f`. We can find these addresses in the store. At `[5:9]` 
for example, we can indeed see that the address is bound to a top integer value. 
The other pointers are similar.

### Executing the Scheme Analysis

To execute the Scheme analysis, the following command can be used:

```
docker run -it monarch scheme -f maf2-analysis/programs/R5RS/various/fact.scm
```

This command runs the Scheme analysis on the `fact.scm` input program which computes the factorial of 5.
Its output is similar to the Python analysis, but does not show the results per component (i.e., function call).

```
 EnvAdr fact:1:10 [] | CloKey -> ...
    EnvAdr n:1:15 [] | IntKey -> Top
```

In this case, two addresses are allocated, an address for the factorial function itself, 
and one for its argument. The analysis derives that the argument of the factorial function 
has an integer type.

Note that the analysis is implemented for a subset of Scheme, meaning that not all features 
in the benchmark programs are available.

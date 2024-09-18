Monarch
=====


## Goal

Monarch is the successor of [MAF](https://github.com/softwarelanguageslab/maf) a framework for experimenting with modular static analyses that are based on abstract interpretation. 
This iteration of the framework focusses on monadic implementations of the so-called "Abstracting Definitional Interpreters" (Darais et al., 2017) technique to static analysis.

MAF focussed on static analyses developed according to the ModX technique.
While this current iteration of the framwork still includes an implementation of the algorithms used 
in this ModX technique, its analyses are not structured in this way. Rather, ModX is viewed as an intelligent worklist algorithm provided as a parameter to the analysis' implementation.

## Usage 

**This section is a work in progress**

The framework can be used in a standalone mode by interacting with it through a command line interface.  This command line interface currently offers some basic analyses for Scheme and some utilities for testing parsing of Python programs. This CLI is offered by the `maf2-analysis` package, and can be executed by running `cabal run` in this package.

Alternatively, the repository can be used as a set of libraries. This usage is illustrated by [this](https://github.com/bramvdbogaerde/maf2-lambda) repository, which implements a simple analysis for the extended lambda calculus. It also contains a suitable _stack_ configuration to load our set of libraries from this repository through Github's infrastructure. 

## Structure

The project is structured as a monorepository containing several indepent libraries.
The idea behind this structure is to enable re-use of each of the components in our 
framework, allowing them to be easily used in smaller experiments. The libraries
that make up our framework are as follows:

* `maf2-domains`: this library contains some core abstract domains that are used in 
our analyses. These abstract domains are underpinned by abstract interpretation theory
and are formulated in terms of mathematical lattices.
* `maf2-syntax`: this library contains syntax parsing and preprocessing facilities 
for all targets of our analyses. Our analyses currently target Scheme and Python.
* `maf2-analysis`: this library contains our analyses.

Each library contains additional documentation about their structure and usage
in third-party libraries/applications.

## References and Relevant publications

The original idea behind ModX comes from the following work on modular analysis: [Effect-Driven Flow Analysis](https://doi.org/10.1007/978-3-030-11245-5_12), and [A general method for rendering static analyses for diverse concurrency models modular](https://doi.org/10.1016/j.jss.2018.10.001).

The previous iteration of the MAF framework is presented in the following publication:

* _MAF: A Framework for Modular Static Analysis of Higher-Order Languages_. SCAM
  2020. [pdf](http://soft.vub.ac.be/Publications/2020/vub-tr-soft-20-13.pdf). _See release: `SCAM 2020`_
 
MAF is a complete rework of the [Scala-AM framework](https://github.com/acieroid/scala-am), which was not focused on
modular static analysis but was primarily used to experiment with AAM-style analyses. An [AAM implementation](docs/AAM.md) (inspired by Scala-AM) is provided in MAF for benchmarks comparisons. Scala-AM is described in the
following publications:

* _Scala-AM: A Modular Static Analysis Framework_. SCAM
  2016. [pdf](http://soft.vub.ac.be/Publications/2016/vub-soft-tr-16-07.pdf)
  , [doi](https://zenodo.org/badge/latestdoi/23603/acieroid/scala-am).
* _Building a Modular Static Analysis Framework in Scala_. Scala@SPLASH
  2016. [pdf](http://soft.vub.ac.be/Publications/2016/vub-soft-tr-16-13.pdf)
        , [doi](http://doi.acm.org/10.1145/2998392.3001579).

**MAF has been used for evaluating modular static analysis approaches in the following publications:**

* _A Parallel Worklist Algorithm and Its Exploration Heuristics for Static Modular Analyses_. Journal of Systems and Software, Volume 181. 2021. 
[pdf](http://soft.vub.ac.be/Publications/2021/vub-tr-soft-21-06.pdf), [doi](https://doi.org/10.1016/j.jss.2021.111042).
* _A Parallel Worklist Algorithm for Modular Analyses_. SCAM
  2020. [pdf](http://soft.vub.ac.be/Publications/2020/vub-tr-soft-20-10.pdf). _See release: `SCAM 2020`_
* _Incremental Flow Analysis through Computational Dependency Reification_. SCAM
  2020. [pdf](http://soft.vub.ac.be/Publications/2020/vub-tr-soft-20-12.pdf). _See release: `SCAM 2020`
* _Summary-Based Compositional Analysis for Soft Contract Verification_. SCAM 2022. [preprint pdf](http://soft.vub.ac.be/Publications/2022/vub-tr-soft-22-12.pdf). [git](https://github.com/softwarelanguageslab/maf/tree/scam-2022-summaries). [artifact](https://doi.org/10.5281/zenodo.7024635)
.

**Scala-AM has been used for evaluating static analysis approaches in the following publications:**
  * _Garbage-Free Abstract Interpretation through Abstract Reference Counting_. ECOOP 2019. [pdf](http://drops.dagstuhl.de/opus/volltexte/2019/10784/).
  * _A general method for rendering static analyses for diverse concurrency models modular_. Journal of Systems and Software, Volume 149. 2019. [pdf](https://www.sciencedirect.com/science/article/pii/S0164121218302206), [doi](https://doi.org/10.1016/j.jss.2018.10.001). <!-- [pdf](https://soft.vub.ac.be/~qstieven/fwo-proposal-jss.pdf) -->
  * _Mailbox Abstractions for Static Analysis of Actor Programs_. ECOOP 2017. [pdf](http://soft.vub.ac.be/~qstieven/ecoop2017/ecoop2017actors-final.pdf), [doi](https://doi.org/10.4230/LIPIcs.ECOOP.2017.25).
  * _Employing Run-time Static Analysis to Improve Concolic Execution_. BENEVOL 2017. [pdf](http://ceur-ws.org/Vol-2047/BENEVOL_2017_paper_7.pdf).
  * _Incrementalizing Abstract Interpretation_. BENEVOL 2017. [pdf](http://ceur-ws.org/Vol-2047/BENEVOL_2017_paper_9.pdf).
  * _Static taint analysis of event-driven scheme programs_. ELS 2017. [pdf](http://soft.vub.ac.be/Publications/2017/vub-soft-tr-17-02.pdf).
  * _Improving trace-based JIT optimisation using whole-program information_. VMIL@SPLASH 2016. [pdf](http://soft.vub.ac.be/Publications/2016/vub-soft-tr-16-09.pdf), [doi](http://doi.acm.org/10.1145/2998415.2998418).
  * _STRAF: A Scala Framework for Experiments in Trace-Based JIT Compilation_. GTTSE 2015. [pdf](http://soft.vub.ac.be/Publications/2017/vub-soft-tr-17-09.pdf), [doi](https://doi.org/10.1007/978-3-319-60074-1\_10).

## License 

All code in this repository is licensed according to the license provided in the `LICENSE` file.

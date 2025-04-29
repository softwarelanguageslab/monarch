[33mcommit f606d5c01f5f85ca897d3ae7bd8d0bcd78ffd593[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mase-benchmarks[m[33m, [m[1;31morigin/ase-benchmarks[m[33m)[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Apr 25 16:22:34 2025 +0200

    ase: comment old ASE benchmark code

[33mcommit 15d3c592efbd7b569a56fe1c19b2285e152b1ae0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Apr 25 16:01:40 2025 +0200

    ase: increase benchmark timeouts

[33mcommit 0b5a7ae87b561bb418817c15ac631d63f22fdfb1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Mar 2 21:48:12 2025 +0100

    feat(ase): forgot comitting file in previous commit

[33mcommit 8ebdfff6008356417d1b2469edadbdba6c086b24[m
Merge: 75056a58 bfd6598c
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Mar 2 21:34:52 2025 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit 75056a580efd753f7ba6b543faaca6b0a9ccf5bf[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Mar 2 21:34:06 2025 +0100

    feat(ase): global Z3 process

[33mcommit bfd6598c9034d86154faac7b1f3d736c452e5461[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Mar 1 21:55:55 2025 +0100

    fix(ase): remove contexts from path constraints when branching

[33mcommit 8318d667f3ad920c8b9af606ef23ffca0da49309[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Mar 1 21:04:50 2025 +0100

    ase: disable printing

[33mcommit 2086042038a1cad731f33e7c18fbe8cfb01ce018[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Mar 1 21:04:28 2025 +0100

    fix(ase-benchmarks): invalid contract for softy_member benchmark

[33mcommit 8c8ff3a3c2cb2862df142e6d25e640eb39612281[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Mar 1 20:33:56 2025 +0100

    ase: different test program

[33mcommit 42fcbde3c85b600c333ec11df701f4a5e3bc0a90[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Mar 1 20:33:41 2025 +0100

    feat(ase): more precise of allocation of return continuation + partial order on formula's for subsumption checking

[33mcommit b1bb63662832c7c0ff9b9994dc620fd190df9464[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Mar 1 13:57:13 2025 +0100

    feat(ase): add analyze.sh script

[33mcommit 9f04ade1c98744ed816e9578b3c0a82ab918d554[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 28 15:27:19 2025 +0100

    ase: cummulative changes

[33mcommit 119abea24a96561783ff163ff9a26815a01faa1c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 28 12:06:27 2025 +0100

    fix(ase): reset upon error

[33mcommit 33dd490318816a3d8bc1c01b17b20c752440cc6d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 28 12:05:51 2025 +0100

    feat(ase): additional test programs

[33mcommit b6fcfb7be7da28a2faa948602fa7ccf7e62fa682[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 27 13:56:31 2025 +0100

    fix(ase): continue applying restart continuation even if there is no satisfying model found

[33mcommit 061e7641385e687429aae660794e2af7c261253b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 26 16:48:07 2025 +0100

    fix(ase): various fixes

[33mcommit 392ece16ead283da703fb2c12d7c12127f1350dc[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 26 15:43:07 2025 +0100

    feat(ase): do not allocate continuations in the store if not needed

[33mcommit 0632fda5ec62e997134e8e879793783fdf490d3c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 26 11:15:56 2025 +0100

    fix(simpleactor): add `add1` primitive function

[33mcommit d11bec9566cfdb8fa07f380165f49bb9e546cf89[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 22:53:03 2025 +0100

    fix(ase-benchmarks): compile Z3 from source as the one in the debian base image is ancient

[33mcommit 6e1ebe87d83687d153a7f48a632c335364f71fdf[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 22:26:04 2025 +0100

    fix(ase-benchmarks): limit memory usage of workers

[33mcommit 487a4ad5d412bef1f72c713657c2307d44f45beb[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 19:23:32 2025 +0100

    fix(ase): continuations were pushed in reverse (!) order in some cases leading to incorrect semantics

[33mcommit 348f6115f677a990dfa581dce78559966e62e3dd[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 19:20:48 2025 +0100

    regenerate games_snake benchmark

[33mcommit ca899812df2a2b3c2cb4f714bf929eeb1ce977eb[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 17:39:03 2025 +0100

    benchmarks(ase): regenerate benchmarks to incorperate fixes

[33mcommit 8e0d2c26183eda349ca64e0722e61a28a6ad1ef5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 17:38:48 2025 +0100

    various fixes

[33mcommit 76fd3a5cec9b65fb012032d0ac057259ac999d10[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 17:38:38 2025 +0100

    fix(benchmarks): update benchmark script to do an initial cabal run so that cabal does not produce any spurious output

[33mcommit fcf0b7c96e43812b7897d97b2e153c0eac0785e7[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 13:14:30 2025 +0100

    remove failing run command from dockerfile

[33mcommit 3b0878e761a652ecf56bbb833b69e9e4ac0fdbea[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 25 10:36:48 2025 +0100

    benchmarks(ase): prefix any analysis output with the program name

[33mcommit a6db2a9f5ab4f0252dac93d6a543555f47bcd26b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 19:47:16 2025 +0100

    fix(ase-benchmarks): ignore std error

[33mcommit 7b05afac45c385de4deab14aed65a07c54205225[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 19:25:13 2025 +0100

    fix(ase-benchmarks): run `cabal run` in the Docker image so that no spurious output is produced during the actual benchmark runs

[33mcommit ee6832245b5150079b884b18d55382a13e391a5e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 18:45:35 2025 +0100

    fix(simpleactor): various fixes to preprocessor

[33mcommit 5a6291cae472d79374100007dfb977c86c8b1653[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 17:14:18 2025 +0100

    fix(scheme): fix soundness issue for `isTrue` in the `TopLifted` domain

[33mcommit 5f7dc3abd3eac10799b807b4c5e8ffe4afa666fb[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 17:14:00 2025 +0100

    feat(ase): various optimisations

[33mcommit 32c54f8ca1a9c98f2937abb587994919992de5f5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 14:30:35 2025 +0100

    benchmarks(ase): fixup dockerfile

[33mcommit 14d563b909519a602cf0a9f2dea0ba00e03a1413[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 14:07:12 2025 +0100

    fix(ase-benchmarks): fix to preludes

[33mcommit be5e5497a26b8628f1094e9bcf97feaba92b5698[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 14:00:30 2025 +0100

    fix(simpleactor): duplicate definitions in prelude

[33mcommit d64fa3c0fb8e97e077c2399ea2924cb0c6f14099[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 13:53:53 2025 +0100

    benchmarks(ase): regenerate benchmarks

[33mcommit 2d4a13344307a8ece9132889e6d0fa9301c07a33[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 13:53:42 2025 +0100

    fix(simpleactor): attach contracts to more primitives

[33mcommit 83889e2fb2b1816956687f797e87b345eb4280f5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 13:53:19 2025 +0100

    feat(ase): wip number of step calls

[33mcommit ffd68f2bfc653d14ead5b6f0ae7d004c394f5f89[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 13:53:10 2025 +0100

    feat(ase): improved display of symbolic variables and final results

[33mcommit e2cdd618e74b9ceb16261b676f5a4a2141104f2d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 12:38:53 2025 +0100

    fix(ase): correct PC snapshotting + other fixes in SMT translation

[33mcommit a8a08757c9a61c713bc48f89af632e9e8d6e6a05[m
Merge: 30aa5865 1cac8998
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 11:19:26 2025 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit 30aa5865d7c8df194e1016691660ec42a113723b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 11:19:05 2025 +0100

    various fixes

[33mcommit 1cac89982b3c00f1eb1aed12f31d52122129bc9e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 24 10:04:53 2025 +0100

    fix(scv): no symbolic representation for iClosure

[33mcommit 73923eddfde15b250199daa1372a2dc12fa92ce1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Feb 23 16:49:49 2025 +0100

    fix(scv): no representation for primitives

[33mcommit bb0a96e8aa293bd2aa8bb9054dedc4e472f3e010[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Feb 23 16:49:37 2025 +0100

    fix(simpleactor): bump GHC version to 9.6.6

[33mcommit e0f3c812ea309b9593a104475eb8db3b8a43c1c1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Feb 23 16:39:27 2025 +0100

    fix(simpleactor): various fixes
    
    * Adds other unsupported contracts
    * Adds support for "error" expressions

[33mcommit 728ece715e759aa2d369321aee811b71b7132825[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Feb 23 16:38:17 2025 +0100

    fix(ase): remove underconstrained variables from context

[33mcommit 84983c9bef298d04260e5ef4bad546795965c2db[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Feb 23 15:46:47 2025 +0100

    feat(ase): `parallel` special form to reduce the state space

[33mcommit c11532da1a76a8dc408afb3fd2345ffc33629427[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Feb 23 15:46:26 2025 +0100

    benchmarks(ase): regenerate benchmarks

[33mcommit 9731d06228ef5802b23a2ce1c64a99c3f9e2c10d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Feb 23 12:51:38 2025 +0100

    fix(scv-test): update tests to incorperate changes to `Domain.Symbolic.Path`

[33mcommit d8d0a09564b1440afe41678b860fc86526bb3b44[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Feb 22 21:25:39 2025 +0100

    feat(scheme): prettier printing for the Scheme top value

[33mcommit f48a584cb7b7a6856280aea35558c714a9bd5eac[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Feb 22 21:25:08 2025 +0100

    feat(ase): proper widening for the path condition

[33mcommit de37f04711841dd49c6872b16de1bf8372d2fe7a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 21 21:03:41 2025 +0100

    fix(domains:scheme): add `empty` primitive

[33mcommit a1b70fbfc98b83503c1f9a4cd7f3ff026f3def67[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 21 21:02:58 2025 +0100

    feat(ase): wip widening path condition without sets

[33mcommit e574c3e533f8f3a17edb4aa1b1d480022563e725[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 21 15:31:04 2025 +0100

    fix(scheme): added `empty?` primitive

[33mcommit b5967728ce4875e2984bb790a75210b4167a015f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 21 14:55:00 2025 +0100

    feat(ase): make failure stack global

[33mcommit ab8d3ebe9e571dadf154bb511d84edfaf51779dd[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 21 13:02:58 2025 +0100

    debug(ase): traceShow nondet sizes

[33mcommit ae5cdaa4c14e1444ba31d1327a70e24889f99863[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 21 12:11:26 2025 +0100

    fix(worklist): show final debug message when iterations are done

[33mcommit d01c547dfc3d499c747a0f06dad75cac6e07c967[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 21 11:15:41 2025 +0100

    refactor(ase): continuation stack representation

[33mcommit 37754a51f085c1bb44bc5d7cc08bc59015e839b3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 20 23:36:17 2025 +0100

    fix(scheme): add `integer?` primitive

[33mcommit e100444c9e829c9603556c05a3931bf910ae2002[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 20 23:00:25 2025 +0100

    fix(benchmark-ase): flush after timeout

[33mcommit 4e5e90bedfcbad3185c6b08c1bb1125fc68b7fe6[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 20 22:45:15 2025 +0100

    fix(ase): improve performance by factoring out visited set to global state

[33mcommit bd61bc7508a76dce5e4c254dcabc0522ca59df9a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 20 13:49:31 2025 +0100

    fix(ase): restrict countmap to variables in the symbolic formulae

[33mcommit ee5937540829f0cd362a268c9e692b6831f6ebb3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 20 13:12:28 2025 +0100

    chore: bump GHC version in the monorepository project file

[33mcommit 8a21ad77c0e89a190ca2781ff553d3917c2ec962[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 19 17:37:41 2025 +0100

    feat(ase): simplification of conjunctions

[33mcommit 5a82af0cb0090b9dd5b8ee7653ad2e1ca04a7634[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 19 15:57:54 2025 +0100

    feat(ase): visited set

[33mcommit 691934bcf9f2f8bfe1fa52d3eea068804d6f067e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 18 23:30:17 2025 +0100

    cumulative changes
    
    * fixes/changes in the translations
    * simplifications of the symbolic representations (e.g., +/v(10, 20) =
    30)
    * logging

[33mcommit d62dccba2bb828ebb782e0aabba3882766de71b6[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 13:42:25 2025 +0100

    benchmarks(ase): add `loc` information to blame parties

[33mcommit e68625ec4fadfb8bda5a3a5ddb10a37ffa9fb34e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 13:41:56 2025 +0100

    feat(ase): add seperate Blm control node for improved error reporting

[33mcommit 040caabb8a6a3ae401d20578c33bcbbf182a8157[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 12:46:44 2025 +0100

    feat(ase): approximate underconstrained symbolic variables with top

[33mcommit 615169b6043ea3fb9949d64e878cbbdee6a744c1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 10:19:30 2025 +0100

    fix(ase): return top value if more than one possible assignment is returend from the model

[33mcommit 4783d3a3a851aafa06ea0b6e66e6e22d09bdb45a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 10:19:09 2025 +0100

    benchmarks(ase): update benchmark programs with modified prelude

[33mcommit 4d61793113dbe5806b7fc2b086cb82031527d44b[m
Merge: 86c1cddf b9955676
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 10:08:35 2025 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit b995567692ce04c6e783734219f3b95b53a003f0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 09:58:42 2025 +0100

    fix(ase-benchmarks): pin a single benchmark to a single core

[33mcommit 770ddea5d8eee8f40d5249be472f0bcdb074fd9d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 09:58:30 2025 +0100

    fix(ase-benchmarks): remove trailing whitespace in benchmark input file causing them to be not found

[33mcommit 439cf1196220abccd88160d52067e4f9f6d1924e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 09:58:05 2025 +0100

    feat(ase): add a flag to run all configurations for a given benchmark

[33mcommit 46ea9436c39dea4a6711d5fb047940bc75e04a9b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 17 09:44:39 2025 +0100

    feat(ase): added flag to change the number of iterations in the benchmark command

[33mcommit 86c1cddf89dec24b7692912b9eb09275a4211c78[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 14 11:14:55 2025 +0100

    fix(benchmarks): add cons/c contract

[33mcommit e1382eed853d5db5e89474aff67937c5ab17337c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 14 10:43:20 2025 +0100

    feat(ase-benchmark): derive output name from current date

[33mcommit aa83e8f212fc0feee2f5e34c29e9d7a8bdf43390[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 14 10:37:34 2025 +0100

    fix(ase-benchmarks): correct time calculations

[33mcommit e65048ee2e8a1964f5260d4332902f4421973d0a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 14 10:02:39 2025 +0100

    fix(ase-benchmarks): fix format of benchmark name in case of a timeout

[33mcommit 7437fac9d9db5445b08cea41d4aa4986b5708d6f[m
Merge: bbdca486 a96cbd1e
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 14 09:58:19 2025 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit bbdca48622c26e271e940de57d6c688132e93cab[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 14 09:58:11 2025 +0100

    fix(ase-benchmark): fix csv output in case of a timeout

[33mcommit a96cbd1e7d9e8f62e019a6cbde4ea4c395ce30b8[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 14 09:57:06 2025 +0100

    fix(ase-benchmarks): fix parallelisation script

[33mcommit f27c23edf3bc724c41fd067de7c7a19241969e06[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 13 17:58:31 2025 +0100

    feat(ase-benchmarks): run benchmarks in parallel

[33mcommit aa705adeb754ed96f3c4b2c13aa57e43754e1d0a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 13 14:39:31 2025 +0100

    feat(scv): `TopLattice` instance for the symbolic domains + various other fixes

[33mcommit cc224a9f4b743b8e59e0bd374a30177204042a30[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 13 09:56:20 2025 +0100

    feat(ase): added top addresses for other heap types such as strings and vectors

[33mcommit 1998872abdd13ada69fce326b853510881fa00c2[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 13 09:55:46 2025 +0100

    feat(domains): added interpretation of `Top` value for pointer sets

[33mcommit a0fbf0e25798da7c5bf864435f226d92273114d5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 12 19:54:42 2025 +0100

    feat(domains): `TopLifted` implementation of the Scheme domain

[33mcommit 259ceb560ca0cb70a680b9bf95eba7daf26202e9[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 11 16:27:52 2025 +0100

    feat(domains): more `TopLifted` instances
    
    This commit introduces instances for the following domains:
    - CharDomain
    - BoolDomain
    - PairDomain

[33mcommit c389ae44d1ee7ed83d644cfbc270317a13b4bbfe[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 11 14:17:35 2025 +0100

    feat(domains): `NumberDomain` instances for `TopLifted`

[33mcommit 748abc09d357b32f4623108e53a506aad7375332[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 11 14:17:05 2025 +0100

    feat(scv): pair values in the model

[33mcommit 4a80c3daaeb6c8cbe2eda58f3f38364c60561893[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 11 10:17:58 2025 +0100

    feat(scv): add support for pair?/v and VNil in the model

[33mcommit f525f60e496e28339f8ab0db3bd2b3a92b92d8a6[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 15:18:55 2025 +0100

    cleanup(ase): remove debugging code

[33mcommit 6168d5e6785d5c2ac3e01ba695589b65876714dc[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 15:17:56 2025 +0100

    feat(scv): symbolic versions of basic predicates
    
    This change is rather big. It requires changing the output of basic
    predicates such as `isInteger` to a fixed associated type family member.
    To this end the code was also refactored to introduce a single `BoolFor`
    type family instead of one for each different core domain (e.g., Boo and
    BooS).

[33mcommit 9d41aa334701f277875f5666c3c8e3e6455eb392[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 15:16:03 2025 +0100

    cleanup(ase): remove old version of ASE from `simpleactor` module

[33mcommit 91332f1438b90c0783edd2cfac9be93adaf8d829[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 14:05:53 2025 +0100

    benchmarks(ase): update benchmarks

[33mcommit c6c26bfcc52dd9d6fc1fd64d6ca12ecef3a7e918[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 13:30:04 2025 +0100

    fix(simpleactor): fix contracts on structs, skip the tag

[33mcommit f5b82fa3768c3babc3a9c5dd778757f3d9a5b22f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 13:29:36 2025 +0100

    fix(ase-benchmarks): fix contracts in input set of benchmarks

[33mcommit bc5b36bff5937efb18b74fb452e5c40b093ae767[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 12:18:52 2025 +0100

    fix(simpleactor): fix translation of `and` and `or` special forms

[33mcommit 060f52e9fe1acd2d4a63714b1eb1dcadca39e01b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 11:13:47 2025 +0100

    fix(ase-benchmarks): subst benchmark had wrong contracts

[33mcommit 68560cef7cdd32c886f6d69132b0d8761ed71abe[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 10:00:28 2025 +0100

    fix(ase-benchmarks): include all benchmark programs for translation

[33mcommit a2f00a3c35c5a7f50537787de5d8abd08572dbd6[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 10:00:00 2025 +0100

    fix(ase-benchmarks): various fixes
    
    This commit introduces various fixes to the preprocesing scripts of the
    ASE benchmarks:
    
    * All contents of the input port are read instead of the first datum so
    that files assuming an implicit `begin` are also able to be read
    successfully.
    * Close the input port after the program has been outputted (in
    preprocess.py)
    * Fix mistake in the translation of `cond` where the condition was not
    unquoted leading to a metavariable being in the actual translated file

[33mcommit 34936cf5d0312e46a02e2b228d271165b1971c94[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 10 09:55:42 2025 +0100

    fix(ase): subst benchmark lacked a `#lang` declaration

[33mcommit ae7c11c8cacf9683f73f9d399cd37878fca3f0a1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 7 10:13:23 2025 +0100

    fix(domains-test)

[33mcommit 91ec66a6288a0c05df9bdb54c5be1da573f08b96[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Feb 7 09:37:27 2025 +0100

    benchmarks(ase): proper combinations of `k` and properly configured
    timouts

[33mcommit 046670f6136c51d28d09e5197be11adf1d283ae5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Feb 6 15:51:56 2025 +0100

    benchmarks(ase): add timeout + multiple iterations for statistics

[33mcommit cab9249fce52097f4ff655ce38b9d6632ce1d4f8[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 5 19:51:49 2025 +0100

    ase: disable flow benchmark

[33mcommit a4f841a03e535a5c801eaa59f9bbc99daf7e4722[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 5 19:06:53 2025 +0100

    feat(ase): effect-driven based analysis

[33mcommit 84a99e606bbcbb5dd2dcec1ed9d01dd04b4d5b4b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Feb 5 13:10:00 2025 +0100

    feat(analysis): automatically derive stack of @MapT@ for each widened state component

[33mcommit 1af6ba0ce2b5af03fb0480d27ca5fa58485b4431[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 20:17:10 2025 +0100

    feat(ase): dockerfile for reproducible benchmarks

[33mcommit 3e6c24de327d6ad26545aff14cd13a7cb76f336e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 20:16:54 2025 +0100

    fix(scv+domains): vendor forked language-python dependency

[33mcommit a93391f2557c4187f87650a1bee4bfbc24fbd305[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 20:16:02 2025 +0100

    fix(scv+domains): fix base versions

[33mcommit 7a77f0d3be40633a762d041db95128bad3bb9344[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 19:00:29 2025 +0100

    fix(ci): update GHC version in Github Actions

[33mcommit ef4086bb5e96f3f22a216d3c4a9a21d3d7bee361[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 18:56:06 2025 +0100

    feat: bump GHC version to 9.6.6 (from 9.4.8)

[33mcommit 9a661ecb4e3162394b8c67f094cf12c9d3cb73a9[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 17:48:01 2025 +0100

    chore: update vendored dependencies for language-python
    
    This does not normally bring any changes with it, as it includes the
    same changes as the previous fork.

[33mcommit 27136171478b08b515897b680d45038472bca720[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 16:55:37 2025 +0100

    feat(ase): benchmarks

[33mcommit 41b37cc10f4b24c2043398ca69145cfa7800ea24[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 13:49:42 2025 +0100

    feat(ase): experimentation with automatically deriving flow sensitive parts of the monadic stack

[33mcommit 24252407e6992126fbaca9ada8261bb2f7ab4bd8[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Feb 4 13:45:53 2025 +0100

    fix(simpleactor): various fixes
    
    This commit introduces various fixes:
    
    * Added `listof` to prelude
    * Added `symbol?` primitive to Scheme primitives

[33mcommit 71b06932d07290d3b60a06d55f6b494b78b91b83[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 3 17:51:49 2025 +0100

    feat(ase): experimentation with two CacheT layers for flow sensitive information

[33mcommit 5a082da535abfc752ba0689b5355cc113d2620fa[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 3 16:13:16 2025 +0100

    feat(scv): pure joing of PC using `unsafePerformIO`

[33mcommit efafaae36f1de635a032c045f913687b8b777b0a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 3 14:10:21 2025 +0100

    feat(ase): joining of models + location of model and input stream

[33mcommit b598f7392d746187dc0b7d4c4c1641586f02919b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Feb 3 10:23:58 2025 +0100

    fix(ase): keep flow state map properly instead of only returning the successors in that map

[33mcommit 1116c5a0eb6b58aa61df63239bc8a81d697b2723[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 31 23:47:55 2025 +0100

    feat(ase): wip delta mapping so that only changes have joined speeding the analysis

[33mcommit 6d50eaea2799be282e03d8b24808e4ae37feb1bb[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 31 23:10:14 2025 +0100

    fix(ase): speedup flow sensitive
    
    This commit speeds up the flow sensitive variant of the ASE analysis by
    making the computations related to fixpoint checking and filtering out
    redundant states more efficient.
    
    The speed ofthe flow sensitive analysis is now close to the local store
    analysis, still needs to be tested on larger programs.

[33mcommit 657d90ddb8bb5235e708f081a87b57670c6e0f41[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 31 14:45:15 2025 +0100

    feat(ase): updated command-line to include option for switching the analysis type/configuration

[33mcommit 95441695f9f3a148e2a89f909cb8a730a822e5aa[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 31 14:22:26 2025 +0100

    feat(ase): implementation of monadic flow sensitive ASE

[33mcommit 63627cac2e4f7247e42b990f3561405ee646a47a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Jan 30 16:26:15 2025 +0100

    fix(lsp): fix configuration so that `analyses` subprojects can also enjoy LSP benefits

[33mcommit cadfde40432a985ed4286514a642eca7351520ae[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Jan 30 16:25:48 2025 +0100

    feat(ase): wip flow sensitive monadic stack

[33mcommit 7be420675ad3e620469f23e1d57c237e63dcaec5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 29 18:45:23 2025 +0100

    feat(ase): disabling more printing

[33mcommit 0a4b197f406368551cc4f9d5fbc622bea7124536[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 29 18:09:53 2025 +0100

    fix(simpleactor): correct propagation of blame labels in contracts on structs

[33mcommit 890ec704ee849dc8eab6832c389a574a3d2c7853[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 29 18:01:32 2025 +0100

    more benchmarks output

[33mcommit bacce142db9d1ec6098838327be29140a848a823[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 29 18:01:19 2025 +0100

    feat(ase): automate translation of SimpleActor programs to Guile programs

[33mcommit b87e6455f0030cf937bae56c913a0653104b41c0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 29 18:00:57 2025 +0100

    rerun preprocessing of benchmarks

[33mcommit 78230fa57cc73018e8a74f2f87c6f03d8f97f778[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 29 18:00:49 2025 +0100

    feat(simpleactor): various fixes for translations to Guile

[33mcommit 676352ff2334b4330d76a25905999b892d2802b0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 29 17:52:02 2025 +0100

    feat(simpleactor): instrument Guile programs for soundness testing

[33mcommit 60b92400e039d79979e3dca478306b2ccb9dfe75[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Jan 27 17:51:45 2025 +0100

    cleanup

[33mcommit afa14661dfc0bc4f94fb57c74e133488f6e81911[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Jan 27 17:51:30 2025 +0100

    fix(simpleactor): various fixes to the contract preprocessing scripts

[33mcommit ad1083b80696061749ea90afcf274752bd273da3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Jan 27 17:10:07 2025 +0100

    feat(simpleactor): disallow duplicate bindings in let expressions

[33mcommit 00f3d78537bc35982cf09628cde354388d158567[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Jan 27 16:40:43 2025 +0100

    benchmarking(ase): regenerate benchmarks

[33mcommit 5ac1083e9f75b3fcc320933868dd526bb1f8d6b3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Jan 27 15:49:43 2025 +0100

    feat(simpleactor): translate a simpleactor program to Guile

[33mcommit 0b8eb447352389b2ec767e0a17c99d88188be617[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Jan 25 20:12:47 2025 +0100

    feat(ase): speedup analysis by atomic evaluation

[33mcommit f56de337c0cc3ae8868665f0763b5dc242f34bb4[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 24 16:45:30 2025 +0100

    attempts at performance optimisations

[33mcommit f05631b1ca0b2854faa62b02041a6261ac1fdf5e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 24 10:20:13 2025 +0100

    feat(scv): add support for negative integers in the model

[33mcommit 34ed2414d47073babbe8deca94937d6adb66971f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 24 10:20:02 2025 +0100

    feat(ase): added primitives + various performance optimisations

[33mcommit bf02cb59ecf082c99f346092be9ac5d03f62941f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 24 10:19:41 2025 +0100

    feat(ase): added benchmark programs

[33mcommit 5af7fbcd5aa1fc743c4a22ed0ebcbd92c4ccc000[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Jan 23 16:43:39 2025 +0100

    feat(ase): added executable for running an ASE analysis in local configuration mode

[33mcommit 737b661d8dd6873b1ba9359f8627fe2508400ca4[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Jan 23 11:17:55 2025 +0100

    add benchmarks to ASE folder

[33mcommit 66467e790cb62147423f8a94ea5cd9731c772e98[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Jan 22 16:59:09 2025 +0100

    feat(ase): complete instantiation of the monadic stack

[33mcommit d9e071b6c0b3ddca75a1f09f9e2ea9ecfc42c94e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Jan 21 22:07:16 2025 +0100

    feat(ase): wip instantiating the local machine

[33mcommit f710cb26233ea5f159c3c64ebc61a2ab590c730a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Jan 20 09:58:13 2025 +0100

    feat(ase): initial monadic context

[33mcommit c385e3e9764da3c84363f07e5dadc4e3160b7813[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Jan 20 09:47:00 2025 +0100

    feat(analysis): add @uncons@ to @Data.TypeLevel.HList@

[33mcommit 572b69e9d9cf26eaef4b90a456b94efc97f7d484[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 17 22:30:17 2025 +0100

    fix(ase): fix cabal project paths to fit into Monarch's monorepo

[33mcommit 9697e86ed96f97bd08bd5aa46cfa5f8d097e9cdd[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 17 22:25:15 2025 +0100

    feat(ase): import monadic version ASE into Monarch repository

[33mcommit 6a0f24c3ac38ea8a97aacd4aa9e2197926bc9625[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 17 21:54:10 2025 +0100

    fix(analysis): relax functional dependency in StoreM'
    
    Previously the `StoreM'` type class constrained the store contents based
    on the monad used. This is too restrictive as the same monad can have
    multiple stores in its stack. Hence, the functional dependency is
    relaxed so that the monad together with the store type determines the
    address and value type.
    
    In theory, this could result in more ambiguities, but in practice
    nothing really changed in our implementation. Hence, I think it is safe
    to adopt this change into the framework.

[33mcommit 64e1d916e37aef2294ed180a7b0d7605f3b81328[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 17 13:49:15 2025 +0100

    feat(scv): add `putPc` capability to the MonadPathCondition monad

[33mcommit c8f1d00b329425255ad57dd24a858835c7856f84[m
Merge: 45ea93c0 20012622
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 10 12:29:37 2025 +0100

    merge

[33mcommit 45ea93c04dbbcea2598a3913935b681218ecbf39[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Jan 10 12:28:51 2025 +0100

    refactor(simplecc): change package name to simpleactor

[33mcommit 20012622d1d161204252d73b4f93b2d419d0fd5b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 20:26:18 2024 +0100

    benchmarks(ase): regenerate benchmark programs

[33mcommit ff4e94302416ca6f42ec73fda98252122bf4cf34[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 19:40:20 2024 +0100

    fix(ase): integer?/c contract was not defined correctly

[33mcommit a80b28fe12dffdd75ce3eb88302292ed4358eae6[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 18:18:58 2024 +0100

    fix(ase): syntax error

[33mcommit 124871572895b6a8d36859bddbed7a969b571f02[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 18:17:39 2024 +0100

     prepare for benchmarking again

[33mcommit 4bd71d95dba15d3a73e6abda8348d21ca210580a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 16:53:28 2024 +0100

    fix(ase): fix some translation bugs

[33mcommit 5c2b3fd12836a28e3f2d81addf97bc2195fb177f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 15:31:31 2024 +0100

    ase: cummulative updates
    
    This commit introduces several updates to ASE:
    
    * The widened version now uses delta stores to make the overhead of
    combining the results together less resource intensive
    * Joining is more efficient in the least fixed point of the widened
    small step semantics
    * Some support for unsupported expressions in the SMT model (for example
    (VReal (- 1.0))
    * The widened version is now **incremental** as in: it does only
    recompute the states that need to be recomputed. In this case those
    states are only successors. This does speed things up considerably.

[33mcommit f9050582c3eaa73f6b601e5c24b39c207386eb09[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 11:12:24 2024 +0100

    feat(ase): turn on all GHC optimisations

[33mcommit 10d479e3b436b2b2bb95fa82711879869162fedd[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 27 11:11:19 2024 +0100

    benchmarks(ase): regenerate

[33mcommit 230ca4e2eb92dcfd91bc286311f9094e4633b27f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 26 15:36:24 2024 +0100

    ase: cummulative updates

[33mcommit 52f59f941244a508fbaba9a0326d9ffd8ec0d565[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 19:53:07 2024 +0100

    small fixes

[33mcommit 240b0e9da238e7514d2f1bb43543a8a4813f8006[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 19:34:22 2024 +0100

    feat(ase): wip extended prelude in SimpleActor

[33mcommit b26d7cf531927569c6901995575d1c4ad0af1501[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 19:25:30 2024 +0100

    feat(ase): compile Racket's `struct`s away

[33mcommit d30f8ab4ce3e6e70d20c75e763209d85bb5921ec[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 18:50:45 2024 +0100

    feat(ase): SimpleActor undefiner

[33mcommit dce0168ce50e8b1439510b825910f820e15bbc82[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 18:14:48 2024 +0100

    feat(ase): added scripts to process benchmark results

[33mcommit b4a5dd5048c30f5e1163bd1eea75849e066cd3a4[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 16:42:53 2024 +0100

    feat(ase): global widening

[33mcommit 8e6eb4b6b937f0766f0a9667669a625470004e1c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 16:19:03 2024 +0100

    feat(ase): support for blame expression

[33mcommit 67ffc636b76134a2518d26be1bbb5f0551822628[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 16:05:57 2024 +0100

    feat(ase): automation for precision benchmarks

[33mcommit 8bbd8271159601a42162b6a83443c9295d7613ed[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 11:28:00 2024 +0100

    feat(ase): automated timing benchmark

[33mcommit 34cfac97664d0c3b40db7dbc8c683e2f493c0d5f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 25 10:36:21 2024 +0100

    feat(ase): wip automated timing benchmarks

[33mcommit 2decc16242f4eb9c248a2b7f63aa331eb80a22e3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 18 18:33:32 2024 +0100

    eval(ase): prepare automation for performance tests

[33mcommit 667f78aa41e434be0634179790d91d4877c78030[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 18 15:05:59 2024 +0100

    eval(ase): manually update predicate to flat contracts

[33mcommit 09b36a115f1cf6517561582cde9abbb1a857590b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 18 14:46:35 2024 +0100

    eval(ase): automation for preprocessing benchmark programs

[33mcommit 34a2d6b01df407e23336b43ce72363c6f8a8dbed[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 18 14:46:16 2024 +0100

    fix(simpleactor): fixed translation for contracts with multiple arguments

[33mcommit 5ae0bde50c08391cd04a67e9c138dad116605a7a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 18 11:56:45 2024 +0100

    feat(simpleactor): compile away `contract-out`

[33mcommit 09785173ca19a75e562b18379f28f75598855239[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Dec 17 17:49:54 2024 +0100

    feat(ase): added benchmark programs to repo

[33mcommit 8276577cb30be9fc358153b3579cc36540a4d7db[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Dec 17 17:49:22 2024 +0100

    feat(ase): widening per small step state

[33mcommit 1da38325a27dad7de8b79ce0e0ff00133153b235[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 13 18:08:06 2024 +0100

    feat(ase): widening per component (wip)

[33mcommit 1a7d4768ec67eccd2feff37c469afbff4d7fdad5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Dec 13 18:07:56 2024 +0100

    refactor(ase): move abstractions common to all analysis configurations to common module

[33mcommit 23f43b9cc68d3c692cfecd1cd7dc98c4c260bffe[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 12 19:15:07 2024 +0100

    feat(ase): concolic iteration widening

[33mcommit 387229297127a265093157d944c9183827e299fc[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 12 10:45:06 2024 +0100

    fix(scv): mapped symbolic variables also need to be registered in `_allVariables`

[33mcommit 2e3117396762eadd08fdc993d9e6a55bb79965d2[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 12 10:33:14 2024 +0100

    feat(ase): improve fixpoint efficiency by only computing the successors of new unseen states

[33mcommit 058055c2b75eb1d76e7ed2c79b9228eafaadbc39[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 11 22:40:59 2024 +0100

    fix(ase): various fixes in the small step semantics
    
    This commit introduces various fixes to the small step semantics.
    
    * Proper propagation of the environment in the LetK continuation, where
    the extended environment is propagated instead of the original one.
    * Correct allocation of addresses in Let2 rule. The previous rule did
    not take into account that the context could have changed when applying
    the Let2 continuation which could result in an address mismatch.
    * Emptying the continuation store so that continuations which should not
    be on the continuation stack yet are not resumed when restarting the
    computation

[33mcommit d3ba79772a03e3dd264147bd7117954c0f15e621[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 11 22:37:49 2024 +0100

    fix(scv): caching of the model and proper cache keys
    
    This commit adds proper caching for formula's translated using a mapping
    of symbolic variables to their abstract counts. To this end we changed
    the cache keys to tuples of abstract count mappings and the formula that
    needs to be solved.
    
    We also added support for caching the model itself so that it does not
    have to be recomputed each time.

[33mcommit 8347f5b2b5dba241467fc49d6bdedff712336f99[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 11 11:16:45 2024 +0100

    fix(ase): reset context to the empty context when backtracking (i.e., restarting) the program

[33mcommit cf2e16cbd55920cba85a44f2e150fd17653deaaf[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 11 10:23:42 2024 +0100

    fix(ase): implement letrec properly

[33mcommit fd91abf110fae64e82211d1d116c457a6f5491b1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 11 10:23:15 2024 +0100

    feat(scv): add support for `fresh` again, improve mapping between symbolic and SMT constants

[33mcommit 31ba26784a6d5ff346082d7cdb6909402bb5f713[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Dec 10 13:07:43 2024 +0100

    fix(simplecc): splice body of lambda in translation to ANF

[33mcommit 464b84b8dd329cbc2b066271380ea27040f9ea55[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 16:53:05 2024 +0100

    feat(ase): incorperate abstract counting

[33mcommit 3750adaaaba352d2c5acd112e6a38c349e39e6d3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 16:46:39 2024 +0100

    fix(ase): wip non-terminating input program

[33mcommit 7c2e1158624f492b05a0304cfdeebaeebf753db0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 15:58:24 2024 +0100

    feat(ase): full AI of ASE without changes in context/store/pc nor abstract counting

[33mcommit e56de4b6ffbf3985859e453760c958e2851df70f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 14:02:08 2024 +0100

    fix(scv): move ":print-success" to bottom of prelude so we only get one success

[33mcommit 0af70c1ac58d8ae6dd161e1837b914af2b17299d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 13:48:47 2024 +0100

    fix(scv): model needs to map symbolic variables to values
    
    Previous version mapped strings to values, but we actually need to map
    symbolic variables to values

[33mcommit c1b7f89de7d89ea6cb59c800c951c58613e6c73a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 12:26:32 2024 +0100

    fix(scv): declare-const and assert are commands

[33mcommit d49c80841269565d69dc57d1156e9ff9d7168d7a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 12:25:31 2024 +0100

    fix(scv): enable ":print-success" option at the start of the SMTLib prelude

[33mcommit 1fe42094a39d31001ea84b23d735c1ea767799db[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 9 12:22:39 2024 +0100

    feat(scv): computation of the model
    
    This commit introduces support for the computation of models from an
    SMTLib enabled solver. This has been implemented specifically for the
    read-eval-print loop of Z3.
    
    This commit moreover changes the way in which the results from the REPL
    of Z3 are parsed. Whereas its output was read until a sentinel string
    encountered, the output is parsed as an S-expression datum now.

[33mcommit 5bf520bf456e5c06fc86fa5a471970302377702a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 17:26:11 2024 +0100

    feat(ase): wip implement ST-backtrack rule

[33mcommit 27725d9358188d5708fcb36206910fe2b912b540[m
Merge: 57aa7a26 31e692a6
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 15:22:31 2024 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit 57aa7a265d7fd5b570056d3716ba6ad7a08e0b2c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 15:22:22 2024 +0100

    feat(ase): use Scheme primitives
    
    this commits implements primitive functions by using the existing Scheme
    primitives. To this end, an *adapter* was implemented that translates
    from the small-step states to big-step monads by running a monadic stack
    in-place when execution the primitives.

[33mcommit 31e692a6af2214fa22b6a29e4252075f6406c0ab[m
Merge: 137d3854 1161de20
Author: Noah Van Es <noahvanes@me.com>
Date:   Thu Dec 5 13:17:18 2024 +0100

    Merge branch 'main' of https://github.com/softwarelanguageslab/maf-hs

[33mcommit 137d3854669b6d8df51e9ddd2b41b6451628999f[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Thu Dec 5 13:16:12 2024 +0100

    fix bug in Python flow-sensitive analysis

[33mcommit 1161de20c18c700ba8eb0129ca2c23886539d19c[m
Merge: 3f863f1e 98e3f40a
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 11:21:03 2024 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit 3f863f1e40c85640a9e1abd7403f334fd7878ad5[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 11:16:46 2024 +0100

    feat(ase): implement random input through the "input" statement

[33mcommit 98e3f40a0b7f4d5dac8ab40e755a1905afafc3c8[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 10:56:14 2024 +0100

    feat(ase): wip adapter for PrimM monad so that the primitives can be
    used in the small step semantics

[33mcommit 8f65ff9c65011001e708814e64aaf384abbce4d1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 10:41:02 2024 +0100

    refactor(ase): use store abstractions in the small step semantics so that if a new representation is used (for example with abstract counting) we can benefit from them

[33mcommit 3cc500f5ceaf9dc42e31e652a83fb0998eaf36c2[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Dec 5 10:36:24 2024 +0100

    feat(ase): smallstep letrec semantics

[33mcommit b80e056260d6f9ff7a4e98e693b873030dc91445[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 4 13:05:40 2024 +0100

    feat(ase): implement funapp in the smallstep

[33mcommit c8dd9468cb716a9ccf33c36140c985fc6b958803[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 4 13:05:27 2024 +0100

    refactor(simplecc-domain): allow different address representations for ActorValue

[33mcommit 3ea40c84d37bfe36257e8457a2ab13dc8c5e475c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Dec 4 12:58:38 2024 +0100

    refactor(scv): make symbolic value depend on the Scheme value for its addresses
    
    In previous versions addresses defined in `Domain.Scheme.Store` were
    used as the addresses for symbolic values by default. This reduces the
    parametrisability of the analysis. This commit reduces the the coupling
    with the set of standard addresses

[33mcommit 07586f209f59b30e6c164f9a188dd128aef68f85[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Dec 3 20:20:24 2024 +0100

    feat(ase): implement atomic evaluation + evaluation of if in the small step semantics

[33mcommit bc83d59b188f7befbfa34fd323b187600cfcba25[m
Merge: fc5c6515 f2f741a3
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Dec 3 09:54:50 2024 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit fc5c651581fc399da395d4bcd4b295318bc9362e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Dec 3 09:54:18 2024 +0100

    feat(wip): path constraint widening per component
    
    This commit sets the first steps towards widening the path constraint
    per component. To this end we apply a similar strategy as the store
    widening per component. More specifically, we keep track of the path
    constraint not in the component itself but inside a map from components
    to path conditions. This map is split into two halves, an "In" part
    which denotes the path constraint before entering the component, and an
    "Out" part which denotes the path constraint after exiting the
    component. The "In" part is computed at the spawn-site of the component,
    while the "Out" part is integrated with the state of the component at
    the spawn-site.

[33mcommit f2f741a38a30d5b73ee5b778dadd51507986dc12[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 2 18:49:28 2024 +0100

    feat(wip): ASE small-step machine

[33mcommit 05ece053ac294670164990a3faac8cae17ffc663[m
Merge: d385d18a 2c2b2b6b
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 2 17:54:58 2024 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit d385d18aac9be47c0c1b7620489b5e2482a71811[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Dec 2 17:54:49 2024 +0100

    feat(simplecc): added translation to ANF

[33mcommit 2c2b2b6bf78dfd26a64c82630aac4622807f2b1e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Nov 4 11:18:46 2024 +0100

    feat(simplecc): proper joining of path conditions in per-component widening

[33mcommit ba24ebf88039fd39472b667b88116a919c1eca6d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Nov 4 10:22:08 2024 +0100

    feat(simplecc-tests): added smoke tests

[33mcommit e3b91339a5dddea659790ef6f83f9eec5b2b842c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Nov 4 09:43:43 2024 +0100

    feat(ci): force showing all test output

[33mcommit a462429efa73cb99deb1bb05836eaa6bf2fd0650[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Nov 3 23:24:04 2024 +0100

    fix(scheme): various fixes in compilations of various forms

[33mcommit 114fb9822a348cb8002221169020413608b0011e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Nov 3 23:11:16 2024 +0100

    fix(scv): update `ActorDomain` instance following changes to its type class

[33mcommit 479bf6293da39c418fb778414112403a8d47050b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Nov 3 23:06:24 2024 +0100

    feat(tests): smoke test checking whether the analysis doesn't crash
    
    This commit adds test infrastructure for testing the reliability of
    the implemented analyses. More concretely, we implement a smoke
    testing infrastructure which checks whether the analysis does not crash
    on a predetermined set of inputs. We apply this infrastructure on
    analyses for Scheme by checking whether a set of simple Scheme programs
    succeed in being analyzed and parsed.

[33mcommit 370e9c4a01b595fa1e3f8b1f4c71e91beb4565b3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Nov 3 21:47:55 2024 +0100

    feat(erlang): wip fixpoint Erlang Abstract Format semantics

[33mcommit 556002ac1dda1584919d93079bad68069750dab0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Nov 3 21:25:45 2024 +0100

    feat(erlang): add `ActorDomain` instance for Erlang values

[33mcommit b6bba3231deee31a337a04c1029e8bcdf050b61a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Nov 3 21:04:12 2024 +0100

    refactor(analysis)!: move generic actor code out of `SimpleActor`
    
    This commit generalizes the infrastructure code in `SimpleActor` so that
    it can be included in the core domains and analysis packages. More
    specifically, this commit introduces the following (breaking) changes:
    
    * Generalize `ActorDomain` so that it no longer depends on
      `SchemeDomain` this also necessitates the removal of `behavior` values
      which were originally required for the Scheme-based actor language but
      are now compiled away in the SimpleActor language. The resulting
      domain type class constraint enables easier reuse across actor
      languages such as Erlang.
    * Remove original actor monad type classes from the core analysis
      package. These original type classes were too tailored to the Scheme
      semantics and therefore not widely applicable. The
      `Analysis.Actors.Monad` type class now contains the type classes
      originally used for the SimpleActor language, but are general enough
      to support other actor-based languages such as Erlang.
    * Remove abandoned contract checking code as most of this checking is
      now done in base-level code in the SimpleActor language.

[33mcommit b5149dcd0bc6cfe03c0c80d6bc60a2e20db19716[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sun Nov 3 20:34:30 2024 +0100

    feat(scv): add per-component widened path conditions to the analysis

[33mcommit cc4edae3f3160406daa915476edbd9188a802ea2[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 31 14:44:10 2024 +0100

    refactor(domains): move `Address` into its own module

[33mcommit f01666fcd229ca1376f9741c93acea2218647607[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 31 10:00:45 2024 +0100

    fix(scv-tests): pre-allocate pool of variables and assign abstract count one for making the tests pass

[33mcommit 43f0a6cf504cb7948cc1d05ccdee35471c6d2516[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 31 09:56:54 2024 +0100

    Added test case for match epressions

[33mcommit 91c2032c4af22714ec2636dda049c3a59102a96d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 31 09:46:07 2024 +0100

    fix(scv): use `fromJust` when filtering over abstract counts in the SMT translation, since `CountZero` was removed from the abstract counts

[33mcommit d4d7c8fa2c57c59748290514a08cd4b7bc61009d[m
Merge: f0f2f3e8 7352c0ac
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 30 21:16:09 2024 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit f0f2f3e865e7d81a00099ab436040d7c13bfcafe[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 30 21:15:58 2024 +0100

    feat(analysis): add `WidenedStoreT` that is ignored by the caching mechansim

[33mcommit 7352c0ac29918b0251d782726404b665fbbf4eb8[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Wed Oct 30 16:49:05 2024 +0100

    refactor(domain): remove CountZero from abstract counts

[33mcommit 608ef7f3901167c1a0459450e99c687f8aee0848[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Wed Oct 30 16:38:49 2024 +0100

    fix(analysis): adapt the monadic stack for the Python analysis

[33mcommit 31c27bbeb538a999113742b4b28f44249144735c[m
Merge: b619ef0b 78f99c24
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 30 16:24:01 2024 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit b619ef0bd91df96b3018a9b7f783c0363c4dd85a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 30 16:23:38 2024 +0100

    feat(analysis): `runJoinT` no longer require `BottomLattice`

[33mcommit 78f99c24d342a238da8f6dd90725bc00a0a2f202[m
Merge: 038d93c1 3b9206cf
Author: Noah Van Es <noahvanes@me.com>
Date:   Wed Oct 30 16:19:18 2024 +0100

    Merge branch 'main' of https://github.com/softwarelanguageslab/maf-hs

[33mcommit 038d93c17ae7c58080c9404d913e1acf82f6ffb0[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Wed Oct 30 16:19:17 2024 +0100

    track dependencies between rows in Python analysis

[33mcommit 3b9206cf394e81adb8f6702e18113fe18df9cc49[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 30 16:18:12 2024 +0100

    feat(analysis): `MonadJoinable` for `CacheT`

[33mcommit b6104dca6620a59cc2febad0be61409b0127c857[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 30 14:30:21 2024 +0100

    cleanup(analysis): remove unnecessary threads

[33mcommit af0bfc9960be738aedc27f1060fb5195e73003af[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 30 14:26:57 2024 +0100

    fix(analysis): flow sensitive stores ain't threaded

[33mcommit f9704a0f5852cd3569509a4d0310698959c58e0d[m
Merge: 41b32427 5574f208
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 29 23:44:38 2024 +0100

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit 41b32427934c5b5d8abb6cc86c0cd2b3e3d381c1[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 29 23:44:02 2024 +0100

    fix(simpleactor): use `joinWith` instead of `put` for implementing flow
    sensitive stores.

[33mcommit 5574f208e80ce68726528ff17efb5b5829a64a49[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 29 16:00:52 2024 +0100

    feat(python-analysis): track intra-dataframe dependencies

[33mcommit ded541525232e6bae550fcd8b23b650eaa617313[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 29 14:57:18 2024 +0100

    remove BottomLifted from the Python DataFrame/Series abstractions

[33mcommit fb62875e0a8e1095dbda2693d018455cfc79d2d2[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 29 11:21:59 2024 +0100

    fix(scv-tests): remove imports to deleted modules

[33mcommit 3e8fc210c7f3e6925c5d3f22c4b4126656552d68[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 29 11:17:56 2024 +0100

    feat(simplecc): add call context sensitivity

[33mcommit 442efd086dad78fca098ee6858a2c9f1bf791f53[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 28 20:31:29 2024 +0100

    fix(scv): remove entrypoint of removed library code

[33mcommit 1c4ead1db06a2e5370584f4f0a0d037e8be5dbe8[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 28 17:30:13 2024 +0100

    feat(simplecc): add flow sensitivity

[33mcommit c0261af3a72157144a73753afeb846deabfa2407[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 28 16:07:20 2024 +0100

    refactor(example): use repository dependencies for lambda example instead of pinning it to a particular commit

[33mcommit e20b983e54907858b7545878ded2d2393ab86d75[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 28 13:59:39 2024 +0100

    cleanup: remove unused modules, remove SVars

[33mcommit c1bfa5ef18f9d4813476a77fc7eb63b9fe247c54[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 26 00:59:30 2024 +0200

    fix(scv-tests): fix tests to reflect changes in `solve` signature

[33mcommit efc1b078ae543893a94cd831b783e4625cec0b75[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 26 00:53:39 2024 +0200

    formatting changes

[33mcommit 9d8310940cbd74ca0e092f55a5b6b6bce1ba8eb2[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 26 00:47:37 2024 +0200

    feat(scv): combine  abstract counts with addresses used as abstract
    symbolic variables

[33mcommit 3dfb51889eff1ab622550270cc3dada2f2766ed3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 25 14:17:09 2024 +0200

    cleanup: remove unused imports, outdated documentation

[33mcommit 4b0c3107b60a3e3b78316a1cc977d4194e02173d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 25 14:11:10 2024 +0200

    fix(scv-tests): keep up with the changes in the library

[33mcommit b6ad7c81439fe63023aa2c88962916b918c4ea8f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 24 22:20:42 2024 +0200

    feat(simplecc): added "fresh" primitive

[33mcommit 09ccb17acfecc3b6c802656aa2fdf4a371197884[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 24 21:33:41 2024 +0200

    fix(scv): various fixes with sym exe

[33mcommit 5012798648a1fba6d7dd58c5f149c7c4112de51c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 24 13:38:31 2024 +0200

    feat(simpleactor+scv): added pc to actor language

[33mcommit 06093ccedd1e531dcca5f8c9895954edc365b441[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 23 16:44:56 2024 +0200

    feat(scv): `MonadCache` for `FormulaT`

[33mcommit f754da3fd1a65aa5d2ef074f4f93c3c95b72fb51[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 23 16:40:44 2024 +0200

    feat(analysis): make `MapM` bottomless

[33mcommit b1dc6091c69f545ebbd50eb0ceb01cfd9fae3f5d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 23 08:14:42 2024 +0200

    fix(analysis): implement `hasAdr` for IntraAnalysis

[33mcommit 3983da5ad66ab0c258ee63dc63de0f069061867e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 23 08:11:41 2024 +0200

    fix(analysis): check whether address was already in the store before looking it up

[33mcommit 07433d18ed390cb532f39b7834495b0a80b35348[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 22 17:27:24 2024 +0200

    fix(tests): fix tests which were broken due to CP lattice refactoring

[33mcommit 4840198d40f3e99e1fd3f6a11820107e41c2a63c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 22 17:27:04 2024 +0200

    fix(simplecc): fix incompabilities with CP lattice refactoring

[33mcommit 45a2401545560111229c4b108a2d708549575ff1[m
Merge: 1992d23b c742b333
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 22 17:15:02 2024 +0200

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit c742b3337b590cf2ae5c38f7d6357b4364bd3095[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 22 17:07:56 2024 +0200

    fix scv

[33mcommit 1992d23b679e5c0dcde12acfc76f91d3284a7862[m
Merge: 8b67d67d d31c6f1f
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 22 16:48:04 2024 +0200

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit 8b67d67d781e994025b544dae54e0691485d61fc[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 22 16:47:15 2024 +0200

    feat: add nicer `Show`

[33mcommit d31c6f1f3efda505077e18a39dca89534f3816d9[m
Merge: 34eedf6d 9f241db2
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 22 16:43:40 2024 +0200

    Merge branch 'main' of https://github.com/softwarelanguageslab/maf-hs

[33mcommit 34eedf6db93c36c3ec1ec3771f47cef638e7fbad[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 22 16:43:29 2024 +0200

    remove Bottom from the CP lattice

[33mcommit fe257fcaf770ffc14ae038bf94754ac33ac77682[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 22 16:19:08 2024 +0200

    feat(scv): implement `integrate` from MonadPathCondition based on the symbolic path join

[33mcommit 9f241db2c5e46f406ceef70fdfaeb35bbf8409a8[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 22 08:40:31 2024 +0200

    fix(scv): fix failing tests due to unimplemented function

[33mcommit f2aa47015175db57fe02393bd787fcdafc631d56[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 22 01:21:21 2024 +0200

    wiping more bottoms

[33mcommit 1e229da411da3bd8e5f976668ffc059215f653f7[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 22 01:20:54 2024 +0200

    refactor HMapDomain

[33mcommit af7e2c8b0b79fbbf27883a45dfba1d99669a5c75[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Tue Oct 22 01:20:33 2024 +0200

    remove Lattice constraint from Store

[33mcommit ec6e44140e06e1bc963aee42ee26c47aa688fc01[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 21 19:28:52 2024 +0200

    feat(scv): use generated variable names internally in the SMT script

[33mcommit 4e629e80a19b8ce66ec739435dad4240657170b0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 21 19:10:07 2024 +0200

    feat(simplecc): use addresses as the basis of symbolic variables

[33mcommit 357b9ce81137afebb68bc91895d7230860775165[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 21 18:38:25 2024 +0200

    feat(scv): parametrize representation of variables in the symbolic AST

[33mcommit fce83d917a6c10a9c48aad1ba8ea97873b78500c[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 18 16:22:24 2024 +0200

    feat(scv): support other types of data as symbolic variables

[33mcommit b437002fd6680feacd5ad333e196e52f79e2446a[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 18 16:13:06 2024 +0200

    fix(scv): local symbolic store correct semantics (around eval instead of
    around call)

[33mcommit 09f2480dc04ea8c9fd602081b7d458e278311cc9[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Thu Oct 17 01:35:41 2024 +0200

    add joins1

[33mcommit 656a29ce68e8f33a1ada92a4af841573c36800d7[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Thu Oct 17 01:35:25 2024 +0200

    add useful operations to BottomLifted

[33mcommit 0c935dcd0444b44020249db1c8bdd251dddd8f65[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 15 22:18:58 2024 +0200

    fix: push rest

[33mcommit c959241b79b448485b184574e2f0909d706f6cdc[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 15 22:10:25 2024 +0200

    feat(scv): symbolic stores generate variables

[33mcommit f716d89c576507297bd76ada26cc5329aaae9ce3[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 15 20:46:09 2024 +0200

    refactor(scv): wip local symbolic stores

[33mcommit 5e82750970e8c26a6c1226ae4aec34e63d8b28da[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 15 20:45:49 2024 +0200

    refactor(analysis): remove contraints from StoreM' that are not needed for instances

[33mcommit 96b16272a6c4b5be74f007da82a55ae233507bed[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 15 20:44:58 2024 +0200

    feat(analysis): added `around` for composing different functions around in the open recursion in `MonadFixpoint`

[33mcommit c6004339381254bff845f02f496c7cb64c9f34dd[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Tue Oct 15 20:44:29 2024 +0200

    feat(analysis): remove redundant lattice constraint in `ComponentTracking`

[33mcommit b8704b331006830f6666dd9b6e5568ba5bb838fb[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 22:53:15 2024 +0200

    feat(erlang): core erlang surface level syntax (cnt)

[33mcommit 12dc44c5f4fc762d363474f07342cb1c19f94f1b[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 21:04:37 2024 +0200

    feat(erlang): surface syntax core erlang parser (wip)

[33mcommit e33a3e79538bb5b915d5a814c698faccc86a5aff[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 18:02:40 2024 +0200

    feat(syntax): add function to compute the set of free variables

[33mcommit af4daf0a1c1061ffd86afcbd50fd7993417d2cda[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 17:43:50 2024 +0200

    refactor(simplecc): use explicit components for MonadFixpoint instead of bare expressions

[33mcommit c778188bcd36907f6c15cdbfb5b54541c66a2f91[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 17:43:19 2024 +0200

    fix(syntax): include endPosition in `Span`

[33mcommit 6012b14e21d64874e86c235d79c3269686f43a87[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 16:28:53 2024 +0200

    feat(domains): remove bottom value from the CPVector

[33mcommit 147e319756613c979e428dcc2938e54f11c72b95[m
Merge: 8b9500ca 125205a7
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 16:24:08 2024 +0200

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit 8b9500caf12614547df4b3af98f550d447b2d6cd[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 16:23:49 2024 +0200

    feat: go fully bottomless in CPList

[33mcommit 1eadf487f12feca0a4bdefd54b99036ec784c4cb[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 16:14:37 2024 +0200

    refactor(seqdomain): all operations are in `AbstractM`

[33mcommit e545ba1de084127a3dbb08eaf6afa53468d7c4db[m[33m ([m[1;31morigin/bottomless[m[33m)[m
Merge: ad98e02a 1615809e
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 16:08:22 2024 +0200

    Merge branch 'main' into bottomless

[33mcommit ad98e02ab227cfee1ac11cf17bc9860af4558951[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 16:08:16 2024 +0200

    feat: go bottomless on CPList

[33mcommit 125205a7f72b3836d496d347f18dec2f8e8e4058[m
Author: Noah Van Es <noahvanes@me.com>
Date:   Mon Oct 14 15:47:13 2024 +0200

    remove the bottom from MayEscape

[33mcommit 1615809e297811af118d903d15b854003a768d80[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Mon Oct 14 15:22:54 2024 +0200

    fix(analysis): join

[33mcommit 9b5047cb0226daaf6eade01c9612387e3cfb4753[m
Merge: 22f9d68d d468fca3
Author: Noah Van Es <noahvanes@me.com>
Date:   Mon Oct 14 11:09:15 2024 +0200

    Merge pull request #1 from softwarelanguageslab/bottomless
    
    Go bottomless

[33mcommit d468fca3992ca27e7e73c15a31c1aff0fecf8794[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 12 11:04:40 2024 +0200

    fix(scv): fix compilation errors originating from `MonadJoin` refactoring

[33mcommit ba82cbbb09f1cc74bfcc0038c130281305762070[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 12 00:39:55 2024 +0200

    feat(analysis): remove redundant constraints in `catchOn`

[33mcommit 34d7791aa21b2e0e87c218a0deb83e17968c4b3d[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 12 00:39:48 2024 +0200

    feat(analysis): remove redundant constraints in `catchOn`

[33mcommit 3dde669ab4e5d068336555510ac43578be60304f[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 12 00:33:51 2024 +0200

    various fixes

[33mcommit 2cc5828afb0e904b789dfdd84a392f040fa66838[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Sat Oct 12 00:26:35 2024 +0200

    feat: refactor JoinT so that BottomLattice constraint becomes redundant

[33mcommit 41d88554d90ae25ea08c929c69246468a3121e7c[m
Merge: 0f40040c 22f9d68d
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 11 22:51:12 2024 +0200

    Merge branch 'main' into bottomless

[33mcommit 22f9d68d2b25d08d61a7b1b726e70dbc6960cf47[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 11 20:51:49 2024 +0200

    refactor(domains): `MonadEscape` does not need bottom lattice

[33mcommit 0f40040cd459f9468ed5cb3470a27b4847360e54[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 11 20:43:43 2024 +0200

    attempt

[33mcommit 30cf6d1584f485c4c39bbff9025f82363b567f5e[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 11 20:43:13 2024 +0200

    fix(analysis): added JoinMap module to the cabal file

[33mcommit 08c7b7b02db0d555a4b9cb1b6e890024b4b71828[m
Merge: b22e3b54 4feb3b41
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 11 20:42:18 2024 +0200

    Merge branch 'main' of github.com:softwarelanguageslab/maf-hs

[33mcommit b22e3b54e4fb0893dcecf480132bec99cb037ebd[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 11 20:42:06 2024 +0200

    refactor(syntax): spelling mistake in one of the Python AST functions

[33mcommit 4cc4e95e50c9da95e624627a359a167933bb24df[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Fri Oct 11 20:41:46 2024 +0200

    feat(domains): added `Top` lattice that represents any value + added `BottomLifted` for adding artifical bottom value to any value

[33mcommit 4feb3b410d34b0fb72c758c4ebb66b81a9787b24[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 10 18:27:48 2024 +0200

    refactor(scv): refactor local symbolic stores

[33mcommit da985117cee153b5ea4efe28f3776336604e85fa[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 10 18:27:21 2024 +0200

    refactor(analysis): make layer instance of `StoreM` overlappable

[33mcommit 979c361aac38ef511f2b2dc0b441d832df157b03[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 10 16:03:12 2024 +0200

    refactor(analysis): move JoinToMap to analysis package

[33mcommit bc823a0df91da1ce2be3b2b0704602b7f3645522[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Thu Oct 10 16:01:13 2024 +0200

    feat(erlang): implemented lexer

[33mcommit 56ff711c18f4709c357670e8e84360616b35e0d0[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 9 21:37:53 2024 +0200

    feat(simplecc): improve precision in pattern matching by not propagating `MatchError`s

[33mcommit 94e8fdc4a1b5d31926e6a9e9c069ef2179edbd75[m
Author: Bram Vandenbogaerde <bram@vdb.space>
Date:   Wed Oct 9 21:20:53 2024 +0200

    fix(simplecc): unsoundness issues leading to undetected contract violations
    
    This commit fixes a number of soundness bugs in the current semantics of
    the `SimpleActor` language:
    
    * `EqualLattice` for `UnitLattice` was implement in an unsound way,
    it
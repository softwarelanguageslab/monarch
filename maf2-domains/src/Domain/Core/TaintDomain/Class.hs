module Domain.Core.TaintDomain.Class where

import Lattice (Joinable)

class Joinable t => TaintDomain t where
    empty       :: t
    addTaints   :: t -> t -> t


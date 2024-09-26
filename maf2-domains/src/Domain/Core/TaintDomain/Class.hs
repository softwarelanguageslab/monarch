module Domain.Core.TaintDomain.Class where

import Lattice (Joinable)

type TaintDomain t = (Joinable t, Monoid t)

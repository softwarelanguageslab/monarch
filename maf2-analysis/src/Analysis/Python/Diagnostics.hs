{-# OPTIONS_GHC -Wno-partial-fields #-}
{-# LANGUAGE UndecidableInstances #-}

-- | This module provides diagnostics that can be reported
-- as part of the analysis result.
--
-- It provides a general mechanism for reporting analysis results
-- to analysis users, as well as to other tools such as Language Servers.
module Analysis.Python.Diagnostics
  ( Diagnostic (..),
    DiagnosticType (..),
    MonadReport(..),
    ReportT,
    runReportT
  )
where

import Analysis.Monad
import Control.Monad.Layer
import Control.Monad.Trans.Writer
import Control.Monad.Writer.Class (MonadWriter)
import Data.Set
import qualified Data.Set as Set
import Syntax.Python

-----------------------------------------
-- Definition of diagnostic information
-----------------------------------------

-- | The type of diagnostic. Diagnostic types can store arbitrary
-- data. For instance, a "TaintViolation" could store the value
-- that lead to the taint violation.
data DiagnosticType vlu
  = TaintViolation vlu
  | ArityViolation {expectedArity :: Int, actualArity :: Int}
  deriving (Ord, Eq)

instance Show (DiagnosticType vlu) where
  show (TaintViolation _) = "a tainted value flowed to this sink"
  show (ArityViolation expected actual) = "arity violation, expected " ++ show expected ++ " actual " ++ show actual

-- | The diagnostic itself carries a diagnostic type 'd' and a
-- source location (span) to which the diagnostic applies.
data Diagnostic d = Diagnostic d PyLoc
  deriving (Ord, Eq)

-----------------------------------------
-- Reporting diagnostics
-----------------------------------------

-- TODO: this is more general than Python, move this to a more general module.
class MonadReport d m | m -> d where
  reportDiagnostic :: PyLoc -> d -> m ()

instance {-# OVERLAPPABLE #-} (MonadLayer t, MonadReport d m, Monad m) => MonadReport d (t m) where
  reportDiagnostic loc = upperM . reportDiagnostic loc

newtype ReportT d m a = ReportT { runReportT' :: WriterT (Set (Diagnostic d)) m a }
  deriving (Applicative, Functor, Monad, MonadCache, MonadTrans, MonadLayer, MonadWriter (Set (Diagnostic d)))

runReportT :: ReportT d m a -> m (a, Set (Diagnostic d))
runReportT = runWriterT . runReportT'

instance Monad m => MonadReport d (ReportT d m) where
  reportDiagnostic loc = ReportT . tell . Set.singleton . flip Diagnostic loc

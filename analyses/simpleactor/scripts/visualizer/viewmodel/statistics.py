"""Summary statistics over a component's per-iteration branching factors."""

from __future__ import annotations

from dataclasses import dataclass
from typing import Sequence


def mean(values: Sequence[float]) -> float:
    """Arithmetic mean of ``values`` (``0.0`` when empty)."""
    if not values:
        return 0.0
    return sum(values) / len(values)


def percentile(values: Sequence[float], fraction: float) -> float:
    """Return the ``fraction`` quantile using linear interpolation (method R-7).

    ``fraction`` is in ``[0, 1]``. The rank ``fraction * (n - 1)`` is computed on
    the sorted values and the result is linearly interpolated between the two
    surrounding samples. This matches NumPy's default ``method="linear"`` and
    yields the conventional median at ``fraction == 0.5`` for both even and odd
    sample counts. A single sample is returned unchanged; an empty input gives
    ``0.0``.
    """
    if not values:
        return 0.0
    ordered = sorted(values)
    if len(ordered) == 1:
        return float(ordered[0])
    rank = fraction * (len(ordered) - 1)
    lower = int(rank)
    upper = min(lower + 1, len(ordered) - 1)
    weight = rank - lower
    return float(ordered[lower] * (1.0 - weight) + ordered[upper] * weight)


def median(values: Sequence[float]) -> float:
    """Median of ``values`` (the R-7 quantile at ``0.5``)."""
    return percentile(values, 0.5)


@dataclass(frozen=True)
class BranchingStatistics:
    """Average, median and quartile summary of a sequence of branching factors."""

    count: int
    average: float
    median: float
    p25: float
    p75: float

    @classmethod
    def from_values(cls, values: Sequence[float]) -> "BranchingStatistics":
        """Compute the summary statistics of ``values``."""
        return cls(
            count=len(values),
            average=mean(values),
            median=median(values),
            p25=percentile(values, 0.25),
            p75=percentile(values, 0.75),
        )

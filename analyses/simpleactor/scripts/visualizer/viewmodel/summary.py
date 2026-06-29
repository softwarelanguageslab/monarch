"""Observable table state summarizing every component's branching factors."""

from __future__ import annotations

from typing import Dict, List

from ..model.events import Span
from ..model.iterations import IterationTracker
from ..observable import Observable
from .statistics import BranchingStatistics


class SummaryViewModel:
    """Maintain one summary row per component, reacting to tracker changes.

    Rows are kept in first-seen order. ``row_inserted`` emits the index of a
    newly added row and ``row_updated`` emits the index of a row whose
    statistics changed. The class is free of any GUI dependency.
    """

    def __init__(self, tracker: IterationTracker) -> None:
        self.row_inserted: Observable = Observable()
        self.row_updated: Observable = Observable()
        self._tracker = tracker
        self._order: List[Span] = []
        self._stats: Dict[Span, BranchingStatistics] = {}
        tracker.changed.subscribe(self._on_component_changed)

    def row_count(self) -> int:
        """Number of component rows currently tracked."""
        return len(self._order)

    def span_at(self, index: int) -> Span:
        """Return the span shown on row ``index``."""
        return self._order[index]

    def statistics_at(self, index: int) -> BranchingStatistics:
        """Return the statistics shown on row ``index``."""
        return self._stats[self._order[index]]

    def _on_component_changed(self, span: Span) -> None:
        """Recompute ``span``'s statistics and emit the matching notification."""
        stats = BranchingStatistics.from_values(self._tracker.branching_factors(span))
        if span in self._stats:
            self._stats[span] = stats
            self.row_updated.emit(self._order.index(span))
        else:
            self._stats[span] = stats
            self._order.append(span)
            self.row_inserted.emit(len(self._order) - 1)

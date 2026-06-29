"""Observable branching-factor history for a single component."""

from __future__ import annotations

from typing import List

from ..model.events import Span
from ..model.iterations import IterationTracker
from ..observable import Observable


class DetailViewModel:
    """Expose one component's ordered per-iteration branching factors.

    ``changed`` emits whenever the tracked span's branching factors change,
    including while its current iteration is still running. The class is free of
    any GUI dependency.
    """

    def __init__(self, tracker: IterationTracker, span: Span) -> None:
        self.changed: Observable = Observable()
        self._tracker = tracker
        self._span = span
        self._unsubscribe = tracker.changed.subscribe(self._on_component_changed)

    @property
    def span(self) -> Span:
        """The component this view model reports on."""
        return self._span

    def branching_factors(self) -> List[int]:
        """Branching factors for the tracked span, in arrival order.

        Includes the in-progress iteration's running count as a trailing entry
        while one is open.
        """
        return self._tracker.branching_factors(self._span)

    def dispose(self) -> None:
        """Detach from the tracker so the view model stops receiving updates."""
        self._unsubscribe()

    def _on_component_changed(self, span: Span) -> None:
        """Re-emit a change when the tracked span's branching factors change."""
        if span == self._span:
            self.changed.emit()

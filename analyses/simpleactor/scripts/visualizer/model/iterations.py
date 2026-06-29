"""Per-component iteration tracking built from a stream of analysis events."""

from __future__ import annotations

from typing import Dict, List

from ..observable import Observable
from .events import (
    Event,
    IntraEnded,
    IntraStarted,
    PostBranch,
    PreBranch,
    Span,
)


class IterationTracker:
    """Accumulate per-component branching factors from ordered events.

    An iteration for a component starts at its ``IntraStarted`` and ends at the
    matching ``IntraEnded`` or at the next ``IntraStarted`` of any component,
    whichever comes first. The branching factor of an iteration is the number of
    ``PreBranch`` events observed while it is open. ``changed`` emits the span
    whose history grew each time an iteration completes.
    """

    def __init__(self) -> None:
        self.changed: Observable = Observable()
        self._completed: Dict[Span, List[int]] = {}
        self._open_span: Span | None = None
        self._open_count: int = 0

    def components(self) -> List[Span]:
        """Return the spans that have at least one completed iteration."""
        return list(self._completed.keys())

    def branching_factors(self, span: Span) -> List[int]:
        """Return the completed branching factors for ``span`` in arrival order."""
        return list(self._completed.get(span, ()))

    def consume(self, event: Event) -> None:
        """Advance the tracker state with a single event."""
        if isinstance(event, IntraStarted):
            self._close_open()
            self._open_span = event.span
            self._open_count = 0
        elif isinstance(event, IntraEnded):
            if self._open_span is not None and event.span == self._open_span:
                self._close_open()
        elif isinstance(event, PreBranch):
            if self._open_span is not None:
                self._open_count += 1
        elif isinstance(event, PostBranch):
            pass

    def _close_open(self) -> None:
        """Finalize the currently open iteration and notify subscribers."""
        if self._open_span is None:
            return
        span = self._open_span
        self._completed.setdefault(span, []).append(self._open_count)
        self._open_span = None
        self._open_count = 0
        self.changed.emit(span)

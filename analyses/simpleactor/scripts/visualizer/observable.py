"""Minimal synchronous observer primitive for loose coupling between layers."""

from __future__ import annotations

from typing import Callable, List


class Observable:
    """A list of callbacks invoked synchronously when the producer emits."""

    def __init__(self) -> None:
        self._subscribers: List[Callable[..., None]] = []

    def subscribe(self, callback: Callable[..., None]) -> Callable[[], None]:
        """Register a callback and return a function that unsubscribes it."""
        self._subscribers.append(callback)

        def unsubscribe() -> None:
            if callback in self._subscribers:
                self._subscribers.remove(callback)

        return unsubscribe

    def emit(self, *args, **kwargs) -> None:
        """Invoke every registered callback with the given arguments."""
        for callback in list(self._subscribers):
            callback(*args, **kwargs)

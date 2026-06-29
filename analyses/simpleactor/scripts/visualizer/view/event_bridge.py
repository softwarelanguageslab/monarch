"""Thread-safe bridge from the stdin reader to the Qt event loop."""

from __future__ import annotations

from typing import TextIO

from PySide6.QtCore import QObject, Signal

from ..model.ingestion import StdinReader


class EventBridge(QObject):
    """Forward background-thread stdin lines onto the GUI thread as signals.

    The wrapped :class:`StdinReader` runs on a daemon thread and emits
    ``line_received`` for every line; Qt delivers the signal to slots in the GUI
    thread through a queued connection. ``finished`` fires once at EOF.
    """

    line_received = Signal(str)
    finished = Signal()

    def __init__(self, stream: TextIO | None = None, parent: QObject | None = None) -> None:
        super().__init__(parent)
        self._reader = StdinReader(
            on_line=self.line_received.emit,
            on_eof=self.finished.emit,
            stream=stream,
        )

    def start(self) -> None:
        """Start the background reader thread."""
        self._reader.start()

    def stop(self) -> None:
        """Request the background reader thread to stop."""
        self._reader.stop()

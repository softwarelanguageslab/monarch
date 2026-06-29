"""Application entry point: builds the GUI and starts stdin ingestion."""

from __future__ import annotations

import signal
import sys

from PySide6.QtCore import QTimer
from PySide6.QtWidgets import QApplication

from visualizer.model.events import parse_event
from visualizer.model.iterations import IterationTracker
from visualizer.view.event_bridge import EventBridge
from visualizer.view.main_window import MainWindow
from visualizer.viewmodel.summary import SummaryViewModel


def _consume_line(tracker: IterationTracker, line: str) -> None:
    """Parse one stdin line and feed a recognized event into the tracker."""
    event = parse_event(line)
    if event is not None:
        tracker.consume(event)


def _install_sigint_handler(app: QApplication) -> None:
    """Quit the application on Ctrl-C while the Qt event loop is running."""
    signal.signal(signal.SIGINT, lambda *_: app.quit())
    keepalive = QTimer()
    keepalive.start(200)
    keepalive.timeout.connect(lambda: None)
    app._sigint_keepalive = keepalive  # type: ignore[attr-defined]


def main(argv: list[str] | None = None) -> int:
    """Construct the application, wire stdin ingestion, and run the event loop."""
    app = QApplication(argv if argv is not None else sys.argv)
    _install_sigint_handler(app)

    tracker = IterationTracker()
    summary = SummaryViewModel(tracker)
    window = MainWindow(tracker, summary)

    bridge = EventBridge()
    bridge.line_received.connect(lambda line: _consume_line(tracker, line))
    bridge.finished.connect(window.mark_stream_ended)
    app.aboutToQuit.connect(bridge.stop)

    window.show()
    bridge.start()

    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())

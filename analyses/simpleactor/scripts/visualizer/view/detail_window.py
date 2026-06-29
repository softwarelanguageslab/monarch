"""Live line graph of one component's branching factor per iteration."""

from __future__ import annotations

import pyqtgraph as pg
from PySide6.QtCore import Qt
from PySide6.QtGui import QCloseEvent
from PySide6.QtWidgets import QVBoxLayout, QWidget

from ..viewmodel.detail import DetailViewModel


class DetailWindow(QWidget):
    """Plot the branching factor over iterations for a single component.

    The graph redraws whenever the view model reports a newly completed
    iteration, giving a real-time picture of how branching evolves. The window
    deletes itself when closed and releases its view-model subscription.
    """

    def __init__(self, view_model: DetailViewModel, parent: QWidget | None = None) -> None:
        super().__init__(parent)
        self.setAttribute(Qt.WA_DeleteOnClose, True)
        self._vm = view_model
        self.setWindowTitle(view_model.span.display_name)
        self.resize(640, 400)

        layout = QVBoxLayout(self)
        self._plot = pg.PlotWidget()
        self._plot.setLabel("bottom", "Iteration")
        self._plot.setLabel("left", "Branching factor")
        self._plot.showGrid(x=True, y=True)
        self._curve = self._plot.plot([], [], pen=pg.mkPen(width=2), symbol="o")
        layout.addWidget(self._plot)

        self._unsubscribe = view_model.changed.subscribe(self.refresh)
        self.refresh()

    def refresh(self) -> None:
        """Redraw the curve from the current branching-factor history."""
        values = self._vm.branching_factors()
        self._curve.setData(list(range(len(values))), values)

    def closeEvent(self, event: QCloseEvent) -> None:  # noqa: N802
        """Release the view-model subscription before the window is destroyed."""
        self._unsubscribe()
        self._vm.dispose()
        super().closeEvent(event)

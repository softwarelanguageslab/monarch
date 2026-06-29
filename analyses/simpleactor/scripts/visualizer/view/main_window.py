"""Top-level application window hosting the reactive component table."""

from __future__ import annotations

from typing import Dict

from PySide6.QtCore import QModelIndex, QSortFilterProxyModel
from PySide6.QtWidgets import QMainWindow, QTableView

from ..model.events import Span
from ..model.iterations import IterationTracker
from ..viewmodel.detail import DetailViewModel
from ..viewmodel.summary import SummaryViewModel
from .detail_window import DetailWindow
from .table_model import SummaryTableModel


class MainWindow(QMainWindow):
    """Main window showing the per-component branching-factor table.

    Double-clicking a row opens a live detail graph for that component, and
    clicking a column header sorts the table by that column, toggling between
    ascending and descending order on repeated clicks.
    """

    def __init__(self, tracker: IterationTracker, summary: SummaryViewModel) -> None:
        super().__init__()
        self.setWindowTitle("Branching-Factor Visualizer")
        self.resize(720, 480)

        self._tracker = tracker
        self._model = SummaryTableModel(summary)
        self._proxy = QSortFilterProxyModel(self)
        self._proxy.setSourceModel(self._model)
        self._proxy.setSortRole(SummaryTableModel.SORT_ROLE)
        self._detail_windows: Dict[Span, DetailWindow] = {}

        self._table = QTableView(self)
        self._table.setModel(self._proxy)
        self._table.setSelectionBehavior(QTableView.SelectRows)
        self._table.setSortingEnabled(True)
        self._table.horizontalHeader().setStretchLastSection(True)
        self._table.doubleClicked.connect(self._open_detail)
        self.setCentralWidget(self._table)

    def _open_detail(self, index: QModelIndex) -> None:
        """Open the detail graph for the row, or raise an already-open one."""
        if not index.isValid():
            return
        span = self._model.span_at(self._proxy.mapToSource(index).row())
        existing = self._detail_windows.get(span)
        if existing is not None:
            existing.raise_()
            existing.activateWindow()
            return
        window = DetailWindow(DetailViewModel(self._tracker, span))
        self._detail_windows[span] = window
        window.destroyed.connect(lambda *_: self._detail_windows.pop(span, None))
        window.show()

    def mark_stream_ended(self) -> None:
        """Annotate the title once the input stream has reached end-of-file."""
        self.setWindowTitle("Branching-Factor Visualizer (stream ended)")

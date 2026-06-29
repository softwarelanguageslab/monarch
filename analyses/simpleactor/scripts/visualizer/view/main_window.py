"""Top-level application window hosting the reactive component table."""

from __future__ import annotations

from typing import Dict

from PySide6.QtCore import QModelIndex, QSortFilterProxyModel
from PySide6.QtWidgets import (
    QFileDialog,
    QHBoxLayout,
    QMainWindow,
    QPushButton,
    QTableView,
    QVBoxLayout,
    QWidget,
)

from ..model.events import Span
from ..model.iterations import IterationTracker
from ..viewmodel.detail import DetailViewModel
from ..viewmodel.summary import SummaryViewModel
from .csv_export import model_to_csv
from .detail_window import DetailWindow
from .table_model import SummaryTableModel


class MainWindow(QMainWindow):
    """Main window showing the per-component branching-factor table.

    Double-clicking a row opens a live detail graph for that component, and
    clicking a column header sorts the table by that column, toggling between
    ascending and descending order on repeated clicks. An "Export CSV" button
    writes the table as currently displayed to a file.
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

        self._export_button = QPushButton("Export CSV", self)
        self._export_button.clicked.connect(self._export_csv)

        toolbar = QHBoxLayout()
        toolbar.addWidget(self._export_button)
        toolbar.addStretch(1)

        layout = QVBoxLayout()
        layout.addLayout(toolbar)
        layout.addWidget(self._table)

        container = QWidget(self)
        container.setLayout(layout)
        self.setCentralWidget(container)

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

    def _export_csv(self) -> None:
        """Prompt for a path and write the displayed table to a CSV file."""
        path, _ = QFileDialog.getSaveFileName(
            self, "Export table to CSV", "branching-factors.csv", "CSV files (*.csv)"
        )
        if not path:
            return
        with open(path, "w", newline="", encoding="utf-8") as handle:
            handle.write(model_to_csv(self._proxy))

    def mark_stream_ended(self) -> None:
        """Annotate the title once the input stream has reached end-of-file."""
        self.setWindowTitle("Branching-Factor Visualizer (stream ended)")

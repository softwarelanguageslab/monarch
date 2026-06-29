"""Qt adapter exposing the summary view model as a table model."""

from __future__ import annotations

from PySide6.QtCore import QAbstractTableModel, QModelIndex, Qt

from ..viewmodel.summary import SummaryViewModel

_HEADERS = ("Name", "Average", "Median", "P25", "P75")


class SummaryTableModel(QAbstractTableModel):
    """Bind a :class:`SummaryViewModel` to a Qt item view.

    Row insertions and statistic updates from the view model are translated into
    the corresponding Qt model notifications so a bound view refreshes live.
    """

    def __init__(self, view_model: SummaryViewModel) -> None:
        super().__init__()
        self._vm = view_model
        view_model.row_inserted.subscribe(self._on_row_inserted)
        view_model.row_updated.subscribe(self._on_row_updated)

    def rowCount(self, parent: QModelIndex = QModelIndex()) -> int:  # noqa: N802
        """Number of component rows (no children for valid parents)."""
        if parent.isValid():
            return 0
        return self._vm.row_count()

    def columnCount(self, parent: QModelIndex = QModelIndex()) -> int:  # noqa: N802
        """Fixed number of summary columns."""
        if parent.isValid():
            return 0
        return len(_HEADERS)

    def headerData(self, section: int, orientation, role=Qt.DisplayRole):  # noqa: N802
        """Provide the column titles for the horizontal header."""
        if role != Qt.DisplayRole or orientation != Qt.Horizontal:
            return None
        return _HEADERS[section]

    def data(self, index: QModelIndex, role=Qt.DisplayRole):
        """Return the displayed cell value for ``index``."""
        if not index.isValid() or role != Qt.DisplayRole:
            return None
        column = index.column()
        if column == 0:
            return self._vm.span_at(index.row()).display_name
        stats = self._vm.statistics_at(index.row())
        value = (stats.average, stats.median, stats.p25, stats.p75)[column - 1]
        return f"{value:.2f}"

    def span_at(self, row: int):
        """Return the span associated with ``row``."""
        return self._vm.span_at(row)

    def _on_row_inserted(self, index: int) -> None:
        """Translate a view-model insertion into a Qt row insertion."""
        self.beginInsertRows(QModelIndex(), index, index)
        self.endInsertRows()

    def _on_row_updated(self, index: int) -> None:
        """Translate a view-model update into a Qt ``dataChanged`` signal."""
        top_left = self.index(index, 0)
        bottom_right = self.index(index, len(_HEADERS) - 1)
        self.dataChanged.emit(top_left, bottom_right, [Qt.DisplayRole])

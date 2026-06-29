"""Qt adapter exposing the summary view model as a table model."""

from __future__ import annotations

from PySide6.QtCore import QAbstractTableModel, QModelIndex, Qt

from ..viewmodel.summary import SummaryViewModel

_HEADERS = ("Name", "Average", "Median", "P25", "P75", "Avg Time (ms)", "# Iterations")


# The identity formatter 
def identity(x): 
    return x 

def f2f(x):
    return f"{x:.2f}"

class SummaryTableModel(QAbstractTableModel):
    """Bind a :class:`SummaryViewModel` to a Qt item view.

    Row insertions and statistic updates from the view model are translated into
    the corresponding Qt model notifications so a bound view refreshes live.
    ``SORT_ROLE`` returns the raw numeric value of each cell so a sorting proxy
    orders the rows by magnitude rather than by formatted text.
    """

    SORT_ROLE = Qt.UserRole

    def __init__(self, view_model: SummaryViewModel) -> None:
        super().__init__()
        self._vm = view_model
        self._rows = 0
        view_model.row_inserted.subscribe(self._on_row_inserted)
        view_model.row_updated.subscribe(self._on_row_updated)

    def rowCount(self, parent: QModelIndex = QModelIndex()) -> int:  # noqa: N802
        """Number of component rows (no children for valid parents)."""
        if parent.isValid():
            return 0
        return self._rows

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

    def with_stats(self, row, f): 
        stats = self._vm.statistics_at(row)
        return lambda: f(stats)

    def data(self, index: QModelIndex, role=Qt.DisplayRole):
        """Return the displayed or sort value for ``index``."""
        if not index.isValid() or role not in (Qt.DisplayRole, self.SORT_ROLE):
            return None
        row = index.row()
        column = index.column()

        columns = [
            lambda: self._vm.span_at(row).display_name,
            self.with_stats(row, lambda stats: stats.average), 
            self.with_stats(row, lambda stats: stats.median),
            self.with_stats(row, lambda stats: stats.p25),
            self.with_stats(row, lambda stats: stats.p75),
            lambda: self._vm.average_time_at(row) * 1000,
            lambda: float(self._vm.iterations_at(row)),
        ]

        formatters = [ identity, f2f, f2f, f2f, f2f, f2f, f2f ] 
        formatter = identity if role == self.SORT_ROLE else formatters[column]

        value = columns[column]()
        return formatter(value)

    def span_at(self, row: int):
        """Return the span associated with ``row``."""
        return self._vm.span_at(row)

    def _on_row_inserted(self, index: int) -> None:
        """Translate a view-model insertion into a Qt row insertion.

        The internal count is advanced inside the begin/end bracket so that
        ``rowCount`` reports the pre-insertion value while the insertion is in
        progress, as a sorting proxy model requires.
        """
        self.beginInsertRows(QModelIndex(), index, index)
        self._rows = index + 1
        self.endInsertRows()

    def _on_row_updated(self, index: int) -> None:
        """Translate a view-model update into a Qt ``dataChanged`` signal."""
        top_left = self.index(index, 0)
        bottom_right = self.index(index, len(_HEADERS) - 1)
        self.dataChanged.emit(top_left, bottom_right)

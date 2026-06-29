"""Serialization of a Qt table model to CSV text."""

from __future__ import annotations

import csv
import io

from PySide6.QtCore import QAbstractItemModel, Qt


def model_to_csv(model: QAbstractItemModel) -> str:
    """Render ``model``'s header and displayed cells as CSV text.

    Columns and rows follow the model's current order, so exporting a sorting
    proxy yields the rows as they appear in the view. Cell values use the
    model's ``DisplayRole`` text.
    """
    buffer = io.StringIO()
    writer = csv.writer(buffer)
    columns = model.columnCount()
    writer.writerow(
        [model.headerData(column, Qt.Horizontal, Qt.DisplayRole) for column in range(columns)]
    )
    for row in range(model.rowCount()):
        writer.writerow(
            [model.data(model.index(row, column), Qt.DisplayRole) for column in range(columns)]
        )
    return buffer.getvalue()

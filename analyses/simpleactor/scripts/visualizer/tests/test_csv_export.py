"""Tests for CSV serialization of the summary table model."""

import os

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
pytest.importorskip("PySide6")

from PySide6.QtCore import Qt, QSortFilterProxyModel  # noqa: E402
from PySide6.QtWidgets import QApplication  # noqa: E402

from visualizer.model.events import (  # noqa: E402
    IntraEnded,
    IntraStarted,
    Position,
    PreBranch,
    Span,
)
from visualizer.model.iterations import IterationTracker  # noqa: E402
from visualizer.view.csv_export import model_to_csv  # noqa: E402
from visualizer.view.table_model import SummaryTableModel  # noqa: E402
from visualizer.viewmodel.summary import SummaryViewModel  # noqa: E402


@pytest.fixture(scope="module")
def app():
    return QApplication.instance() or QApplication([])


def make_span(name):
    return Span(filename=name, start=Position(1, 1), end=Position(1, 2))


def run_iteration(tracker, span, branches):
    tracker.consume(IntraStarted(span))
    for _ in range(branches):
        tracker.consume(PreBranch())
    tracker.consume(IntraEnded(span))


def test_csv_contains_header_and_one_row_per_component(app):
    tracker = IterationTracker(clock=iter([0.0, 1.0]).__next__)
    summary = SummaryViewModel(tracker)
    model = SummaryTableModel(summary)

    run_iteration(tracker, make_span("a.rkt"), 2)

    csv_text = model_to_csv(model)
    lines = csv_text.splitlines()
    assert lines[0] == "Name,Average,Median,P25,P75,Avg Self-Time (ms),Time (ms),# Iterations"
    assert len(lines) == 2
    assert lines[1].startswith("a.rkt:1:1-1:2,2.00,2.00,2.00,2.00,")


def test_csv_follows_proxy_sort_order(app):
    tracker = IterationTracker(clock=iter([0.0, 1.0, 2.0, 3.0]).__next__)
    summary = SummaryViewModel(tracker)
    model = SummaryTableModel(summary)
    proxy = QSortFilterProxyModel()
    proxy.setSourceModel(model)
    proxy.setSortRole(SummaryTableModel.SORT_ROLE)

    run_iteration(tracker, make_span("a.rkt"), 5)
    run_iteration(tracker, make_span("b.rkt"), 1)

    proxy.sort(1, Qt.AscendingOrder)
    names = [line.split(",")[0] for line in model_to_csv(proxy).splitlines()[1:]]
    assert names == ["b.rkt:1:1-1:2", "a.rkt:1:1-1:2"]

    proxy.sort(1, Qt.DescendingOrder)
    names = [line.split(",")[0] for line in model_to_csv(proxy).splitlines()[1:]]
    assert names == ["a.rkt:1:1-1:2", "b.rkt:1:1-1:2"]

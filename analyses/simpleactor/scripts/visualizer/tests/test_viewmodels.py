"""Tests for the Qt-free observable view models."""

from visualizer.model.events import (
    IntraEnded,
    IntraStarted,
    Position,
    PreBranch,
    Span,
)
from visualizer.model.iterations import IterationTracker
from visualizer.viewmodel.detail import DetailViewModel
from visualizer.viewmodel.summary import SummaryViewModel


def make_span(name):
    return Span(filename=name, start=Position(1, 1), end=Position(1, 2))


A = make_span("a")
B = make_span("b")


def run_iteration(tracker, span, branches):
    tracker.consume(IntraStarted(span))
    for _ in range(branches):
        tracker.consume(PreBranch())
    tracker.consume(IntraEnded(span))


def test_summary_inserts_row_for_new_component():
    tracker = IterationTracker()
    summary = SummaryViewModel(tracker)
    inserted = []
    summary.row_inserted.subscribe(inserted.append)

    run_iteration(tracker, A, 2)

    assert inserted == [0]
    assert summary.row_count() == 1
    assert summary.span_at(0) == A
    assert summary.statistics_at(0).average == 2.0


def test_summary_updates_existing_row():
    tracker = IterationTracker()
    summary = SummaryViewModel(tracker)
    updated = []
    summary.row_updated.subscribe(updated.append)

    run_iteration(tracker, A, 2)
    run_iteration(tracker, A, 4)

    assert updated  # row 0 is updated live on every PreBranch and on close
    assert set(updated) == {0}
    assert summary.row_count() == 1
    assert summary.statistics_at(0).average == 3.0


def test_summary_reports_average_iteration_time():
    clock = iter([0.0, 2.0, 10.0, 14.0]).__next__
    tracker = IterationTracker(clock=clock)
    summary = SummaryViewModel(tracker)

    run_iteration(tracker, A, 1)
    run_iteration(tracker, A, 1)

    assert summary.average_time_at(0) == 3.0


def test_summary_preserves_first_seen_order():
    tracker = IterationTracker()
    summary = SummaryViewModel(tracker)

    run_iteration(tracker, A, 1)
    run_iteration(tracker, B, 1)

    assert summary.span_at(0) == A
    assert summary.span_at(1) == B


def test_detail_reports_live_history_and_notifies():
    tracker = IterationTracker()
    detail = DetailViewModel(tracker, A)
    notifications = []
    detail.changed.subscribe(lambda: notifications.append(detail.branching_factors()))

    run_iteration(tracker, A, 1)
    run_iteration(tracker, A, 3)
    run_iteration(tracker, B, 5)

    assert detail.branching_factors() == [1, 3]
    # The open iteration's trailing count grows live on every PreBranch.
    assert notifications == [
        [0], [1], [1],
        [1, 0], [1, 1], [1, 2], [1, 3], [1, 3],
    ]


def test_detail_dispose_stops_notifications():
    tracker = IterationTracker()
    detail = DetailViewModel(tracker, A)
    notifications = []
    detail.changed.subscribe(lambda: notifications.append(detail.branching_factors()))

    run_iteration(tracker, A, 1)
    detail.dispose()
    run_iteration(tracker, A, 3)

    assert notifications == [[0], [1], [1]]

"""Tests for per-component iteration tracking."""

from visualizer.model.events import (
    IntraEnded,
    IntraStarted,
    PostBranch,
    Position,
    PreBranch,
    Span,
)
from visualizer.model.iterations import IterationTracker


def make_span(name):
    return Span(filename=name, start=Position(1, 1), end=Position(1, 2))


A = make_span("a")
B = make_span("b")


def test_end_closes_iteration_and_counts_prebranches():
    tracker = IterationTracker()
    for event in (IntraStarted(A), PreBranch(), PreBranch(), IntraEnded(A)):
        tracker.consume(event)
    assert tracker.branching_factors(A) == [2]


def test_post_branch_does_not_affect_count():
    tracker = IterationTracker()
    for event in (IntraStarted(A), PreBranch(), PostBranch(), IntraEnded(A)):
        tracker.consume(event)
    assert tracker.branching_factors(A) == [1]


def test_next_start_closes_previous_iteration():
    tracker = IterationTracker()
    for event in (IntraStarted(A), PreBranch(), IntraStarted(B), PreBranch(), PreBranch()):
        tracker.consume(event)
    assert tracker.branching_factors(A) == [1]
    assert tracker.branching_factors(B) == [2]


def test_unmatched_end_is_ignored():
    tracker = IterationTracker()
    for event in (IntraStarted(A), PreBranch(), IntraEnded(B)):
        tracker.consume(event)
    assert tracker.branching_factors(A) == [1]


def test_open_iteration_count_updates_live():
    tracker = IterationTracker()
    tracker.consume(IntraStarted(A))
    assert tracker.branching_factors(A) == [0]
    tracker.consume(PreBranch())
    assert tracker.branching_factors(A) == [1]
    tracker.consume(PreBranch())
    assert tracker.branching_factors(A) == [2]
    tracker.consume(IntraEnded(A))
    assert tracker.branching_factors(A) == [2]


def test_durations_measured_per_completed_iteration():
    clock = iter([10.0, 13.5, 100.0, 102.0]).__next__
    tracker = IterationTracker(clock=clock)
    for event in (IntraStarted(A), PreBranch(), IntraEnded(A), IntraStarted(A), IntraEnded(A)):
        tracker.consume(event)
    assert tracker.durations(A) == [3.5, 2.0]


def test_open_iteration_has_no_recorded_duration():
    clock = iter([5.0]).__next__
    tracker = IterationTracker(clock=clock)
    tracker.consume(IntraStarted(A))
    assert tracker.durations(A) == []


def test_end_after_start_already_closed_is_ignored():
    tracker = IterationTracker()
    for event in (IntraStarted(A), IntraStarted(B), IntraEnded(A)):
        tracker.consume(event)
    assert tracker.branching_factors(A) == [0]
    assert tracker.branching_factors(B) == [0]


def test_multiple_iterations_accumulate():
    tracker = IterationTracker()
    for event in (
        IntraStarted(A), PreBranch(), IntraEnded(A),
        IntraStarted(A), PreBranch(), PreBranch(), PreBranch(), IntraEnded(A),
    ):
        tracker.consume(event)
    assert tracker.branching_factors(A) == [1, 3]


def test_prebranch_outside_iteration_is_ignored():
    tracker = IterationTracker()
    tracker.consume(PreBranch())
    tracker.consume(IntraStarted(A))
    tracker.consume(IntraEnded(A))
    assert tracker.branching_factors(A) == [0]


def test_changed_notifies_on_start_branch_and_close():
    tracker = IterationTracker()
    seen = []
    tracker.changed.subscribe(seen.append)
    for event in (IntraStarted(A), PreBranch(), IntraEnded(A)):
        tracker.consume(event)
    assert seen == [A, A, A]


def test_components_includes_open_iteration():
    tracker = IterationTracker()
    tracker.consume(IntraStarted(A))
    assert tracker.components() == [A]
    tracker.consume(IntraEnded(A))
    assert tracker.components() == [A]

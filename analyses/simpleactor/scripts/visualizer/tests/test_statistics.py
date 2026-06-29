"""Tests for branching-factor summary statistics."""

from visualizer.viewmodel.statistics import (
    BranchingStatistics,
    mean,
    median,
    percentile,
)


def test_empty_inputs_are_zero():
    assert mean([]) == 0.0
    assert median([]) == 0.0
    assert percentile([], 0.25) == 0.0


def test_single_sample():
    assert mean([4]) == 4.0
    assert median([4]) == 4.0
    assert percentile([4], 0.25) == 4.0
    assert percentile([4], 0.75) == 4.0


def test_mean():
    assert mean([1, 2, 3, 4]) == 2.5


def test_median_odd_count():
    assert median([3, 1, 2]) == 2.0


def test_median_even_count():
    assert median([1, 2, 3, 4]) == 2.5


def test_percentiles_linear_interpolation():
    values = [1, 2, 3, 4]
    assert percentile(values, 0.25) == 1.75
    assert percentile(values, 0.75) == 3.25


def test_percentile_is_order_independent():
    assert percentile([4, 1, 3, 2], 0.25) == 1.75


def test_percentile_bounds():
    values = [10, 20, 30]
    assert percentile(values, 0.0) == 10.0
    assert percentile(values, 1.0) == 30.0


def test_branching_statistics_from_values():
    stats = BranchingStatistics.from_values([1, 2, 3, 4])
    assert stats.count == 4
    assert stats.average == 2.5
    assert stats.median == 2.5
    assert stats.p25 == 1.75
    assert stats.p75 == 3.25


def test_branching_statistics_single_sample():
    stats = BranchingStatistics.from_values([7])
    assert stats == BranchingStatistics(
        count=1, average=7.0, median=7.0, p25=7.0, p75=7.0
    )

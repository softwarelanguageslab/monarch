"""Tests for JSON event parsing and span identity."""

import json

from visualizer.model.events import (
    IntraEnded,
    IntraStarted,
    PostBranch,
    PreBranch,
    Span,
    parse_event,
)

SPAN_JSON = {
    "filename": "programs/test/forward-flow.fail.rkt",
    "startPosition": {"line": 861, "column": 17},
    "endPosition": {"line": 861, "column": 23},
    "annotation": [],
}


def _line(tag, contents=None):
    record = {"tag": tag}
    if contents is not None:
        record["contents"] = contents
    return json.dumps(record)


def test_parse_intra_started():
    event = parse_event(_line("IntraStarted", SPAN_JSON))
    assert isinstance(event, IntraStarted)
    assert event.span.filename == SPAN_JSON["filename"]
    assert event.span.start.line == 861
    assert event.span.end.column == 23


def test_parse_intra_ended():
    event = parse_event(_line("IntraEnded", SPAN_JSON))
    assert isinstance(event, IntraEnded)
    assert event.span.start.column == 17


def test_parse_pre_branch_without_contents():
    assert isinstance(parse_event(_line("PreBranch")), PreBranch)


def test_parse_pre_branch_with_contents():
    assert isinstance(parse_event(_line("PreBranch", [])), PreBranch)


def test_parse_post_branch():
    assert isinstance(parse_event(_line("PostBranch")), PostBranch)


def test_blank_line_is_skipped():
    assert parse_event("   ") is None


def test_malformed_json_is_skipped():
    assert parse_event("{not json") is None


def test_unknown_tag_is_skipped():
    assert parse_event(_line("Unknown")) is None


def test_missing_contents_is_skipped():
    assert parse_event(_line("IntraStarted")) is None


def test_incomplete_span_is_skipped():
    assert parse_event(_line("IntraStarted", {"filename": "a"})) is None


def test_non_object_record_is_skipped():
    assert parse_event("[1, 2, 3]") is None


def test_span_is_hashable_and_equal():
    a = Span.from_json(SPAN_JSON)
    b = Span.from_json(SPAN_JSON)
    assert a == b
    assert hash(a) == hash(b)
    assert {a, b} == {a}


def test_span_display_name():
    span = Span.from_json(SPAN_JSON)
    assert span.display_name == "programs/test/forward-flow.fail.rkt:861:17-861:23"

#!/usr/bin/env python3
"""
dotviewer.py — Navigate regex-matched DOT files grouped by partition.

Usage:
    python3 dotviewer.py <regex> <directory>

The regex must have exactly two capture groups:
  Group 1 — ordering key  : files within a partition are sorted by this value
  Group 2 — partition key : files are grouped into partitions by this value

A dropdown selects the active partition; arrow keys (← →) navigate within it.

Example:
    python3 dotviewer.py '(\\d+)_(.+)\\.dot' ./output
"""

import sys
import re
import os
import subprocess
from collections import defaultdict

from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QLabel, QWidget,
    QVBoxLayout, QHBoxLayout, QPushButton, QComboBox,
    QScrollArea,
)
from PyQt5.QtGui import QPixmap, QKeySequence
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QShortcut


def render_dot_to_png(dot_path: str) -> bytes | None:
    """Render a DOT file to PNG bytes using graphviz dot."""
    try:
        result = subprocess.run(
            ["dot", "-Tpng", dot_path],
            capture_output=True,
            timeout=10,
        )
        if result.returncode != 0:
            return None
        return result.stdout
    except (subprocess.TimeoutExpired, FileNotFoundError):
        return None


def collect_files(directory: str, pattern: re.Pattern) -> dict[str, list[str]]:
    """
    Walk directory, match filenames against pattern, and return a dict mapping
    partition_key -> [sorted list of file paths].
    Sorting within each partition is by the order_key (group 1).
    """
    partitions: dict[str, list[tuple[str, str]]] = defaultdict(list)

    for entry in os.scandir(directory):
        if not entry.is_file():
            continue
        m = pattern.search(entry.path) or pattern.search(entry.name)
        if m is None:
            continue
        if len(m.groups()) < 2:
            continue
        order_key, partition_key = m.group(1), m.group(2)
        partitions[partition_key].append((order_key, entry.path))

    return {
        pk: [path for _, path in sorted(entries)]
        for pk, entries in sorted(partitions.items())
    }


class DotViewer(QMainWindow):
    def __init__(self, partitions: dict[str, list[str]]):
        super().__init__()
        self.partitions = partitions
        self.partition_keys = list(partitions.keys())
        self.current_partition = self.partition_keys[0]
        self.index = 0

        self.setWindowTitle("DOT Graph Viewer")
        self.resize(960, 720)

        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        layout.setContentsMargins(8, 8, 8, 8)
        layout.setSpacing(6)

        # ── Partition selector ──────────────────────────────────────────────
        partition_row = QHBoxLayout()
        partition_row.addWidget(QLabel("Partition:"))
        self.partition_combo = QComboBox()
        self.partition_combo.addItems(self.partition_keys)
        self.partition_combo.currentTextChanged.connect(self.on_partition_changed)
        partition_row.addWidget(self.partition_combo, stretch=1)
        layout.addLayout(partition_row)

        # ── File name label ─────────────────────────────────────────────────
        self.title_label = QLabel()
        self.title_label.setAlignment(Qt.AlignCenter)
        self.title_label.setStyleSheet("font-size: 12px; font-weight: bold;")
        self.title_label.setWordWrap(True)
        layout.addWidget(self.title_label)

        # ── Scrollable image area ───────────────────────────────────────────
        self.scroll_area = QScrollArea()
        self.scroll_area.setAlignment(Qt.AlignCenter)
        self.scroll_area.setWidgetResizable(False)
        self.image_label = QLabel()
        self.image_label.setAlignment(Qt.AlignCenter)
        self.scroll_area.setWidget(self.image_label)
        layout.addWidget(self.scroll_area, stretch=1)

        # ── Error label ─────────────────────────────────────────────────────
        self.error_label = QLabel()
        self.error_label.setAlignment(Qt.AlignCenter)
        self.error_label.setStyleSheet("color: red; font-size: 12px;")
        self.error_label.hide()
        layout.addWidget(self.error_label)

        # ── Navigation bar ──────────────────────────────────────────────────
        nav = QHBoxLayout()
        self.prev_btn = QPushButton("← Previous")
        self.prev_btn.clicked.connect(self.go_prev)
        self.next_btn = QPushButton("Next →")
        self.next_btn.clicked.connect(self.go_next)
        self.counter_label = QLabel()
        self.counter_label.setAlignment(Qt.AlignCenter)
        nav.addWidget(self.prev_btn)
        nav.addStretch()
        nav.addWidget(self.counter_label)
        nav.addStretch()
        nav.addWidget(self.next_btn)
        layout.addLayout(nav)

        # ── Global shortcuts (work regardless of which widget has focus) ────
        QShortcut(QKeySequence(Qt.Key_Left), self).activated.connect(self.go_prev)
        QShortcut(QKeySequence(Qt.Key_Right), self).activated.connect(self.go_next)
        QShortcut(QKeySequence("A"), self).activated.connect(self.go_prev)
        QShortcut(QKeySequence("E"), self).activated.connect(self.go_next)

        self.show_current()

    # ── Partition ────────────────────────────────────────────────────────────

    def on_partition_changed(self, key: str):
        self.current_partition = key
        self.index = 0
        self.show_current()

    def current_files(self) -> list[str]:
        return self.partitions[self.current_partition]

    # ── Navigation ───────────────────────────────────────────────────────────

    def go_prev(self):
        if self.index > 0:
            self.index -= 1
            self.show_current()

    def go_next(self):
        if self.index < len(self.current_files()) - 1:
            self.index += 1
            self.show_current()


    # ── Rendering ────────────────────────────────────────────────────────────

    def show_current(self):
        files = self.current_files()
        path = files[self.index]

        self.title_label.setText(os.path.basename(path))
        self.counter_label.setText(f"{self.index + 1} / {len(files)}")
        self.prev_btn.setEnabled(self.index > 0)
        self.next_btn.setEnabled(self.index < len(files) - 1)

        png_bytes = render_dot_to_png(path)
        if png_bytes is None:
            self.image_label.clear()
            self.error_label.setText(f"Failed to render: {path}")
            self.error_label.show()
        else:
            self.error_label.hide()
            pixmap = QPixmap()
            pixmap.loadFromData(png_bytes)
            self.image_label.setPixmap(pixmap)
            self.image_label.resize(pixmap.size())


def main():
    if len(sys.argv) < 3:
        print(f"Usage: {sys.argv[0]} <regex> <directory>", file=sys.stderr)
        print(__doc__, file=sys.stderr)
        sys.exit(1)

    raw_pattern, directory = sys.argv[1], sys.argv[2]

    if not os.path.isdir(directory):
        print(f"Not a directory: {directory!r}", file=sys.stderr)
        sys.exit(1)

    try:
        pattern = re.compile(raw_pattern)
    except re.error as e:
        print(f"Invalid regex {raw_pattern!r}: {e}", file=sys.stderr)
        sys.exit(1)

    if pattern.groups < 2:
        print("Regex must have exactly 2 capture groups (order, partition).", file=sys.stderr)
        sys.exit(1)

    partitions = collect_files(directory, pattern)

    if not partitions:
        print(f"No files matched regex {raw_pattern!r} in {directory!r}", file=sys.stderr)
        sys.exit(1)

    total = sum(len(v) for v in partitions.values())
    print(f"Found {total} file(s) in {len(partitions)} partition(s).")

    app = QApplication(sys.argv)
    viewer = DotViewer(partitions)
    viewer.show()
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()

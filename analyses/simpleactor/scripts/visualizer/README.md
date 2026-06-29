# Branching-Factor Visualizer

A real-time GUI that visualizes how many `PreBranch` events occur between
`IntraStarted` events during a simpleactor analysis, grouped by component (span).

Logging events are read as newline-delimited JSON records from **standard input**.
The main window shows a reactive table with one row per component and the
average, median, 25th-percentile and 75th-percentile of that component's
per-iteration branching factor, plus the average wall-clock time per iteration in
milliseconds. Clicking a column header sorts the table by that column and clicking
it again reverses the order. Double-clicking a row opens a live line graph of the
branching factor per iteration.

## Installation

```sh
pip install -r requirements.txt
```

## Running

Run the analysis so that it emits JSON logging events on its standard output and
pipe that stream into the visualizer. The package is launched as a module from
the `scripts` directory:

```sh
cd analyses/simpleactor/scripts
<command-that-emits-events> | python -m visualizer
```

For a quick offline check, any file of newline-delimited event records works:

```sh
cd analyses/simpleactor/scripts
cat events.jsonl | python -m visualizer
```

The application exits cleanly on `Ctrl-C` or when the window is closed. When the
input stream reaches end-of-file the window stays open with the last computed
table still visible, and the title bar is annotated with `(stream ended)`.

## Iteration semantics

An *iteration* for a component starts at its `IntraStarted` and ends at the
matching `IntraEnded` **or** at the next `IntraStarted` of any component,
whichever comes first. A component appears in the table as soon as its iteration
starts, and its branching count — the running number of `PreBranch` events —
updates live while the iteration is in progress. The open iteration is shown as
the trailing point in the detail graph and is included in the summary statistics;
its value is finalized when the iteration closes.

## Architecture

The code follows the Model–View–ViewModel pattern:

- `model/` — event parsing, iteration tracking and stdin ingestion (no Qt).
- `viewmodel/` — summary statistics and observable presentation state.
- `view/` — Qt and pyqtgraph rendering bound to the ViewModel.

## Tests

```sh
cd analyses/simpleactor/scripts
python -m pytest visualizer/tests
```

The `model/` and `viewmodel/` tests do not depend on Qt.

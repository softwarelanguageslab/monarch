import {
    Disposable, Event, EventEmitter, Range, TextEditor, TextEditorDecorationType, Uri, window
} from 'vscode';

/** Operations on the editor that commands may use to visualise
  * analysis results. Kept as an interface so that consumers
  * do not depend on the concrete `EditorService`. */
export interface Highlighter {
    /** Dims every line of the document at `uri` that does not overlap
      * with one of the ranges in `keep`. The line `keepLine` (if given) is
      * never dimmed. */
    dimAllExcept(uri: Uri, keep: Range[], keepLine?: number): void;
    /** Removes highlights from the document at `uri`, or from all
      * documents if no `uri` is given. */
    clear(uri?: Uri): void;
}

/** Read-only view on the active highlights, for UI that reacts to them
  * (e.g., the code lenses in lens.ts). */
export interface HighlightState {
    /** The line the highlight in the document at `uri` originates from,
      * or `undefined` if the document is not highlighted. */
    originLine(uri: Uri): number | undefined;
    /** Fires whenever a highlight is applied or cleared */
    readonly onDidChangeHighlights: Event<void>;
}

/** Highlight state of a single document */
interface Highlight {
    /** Ranges that are dimmed */
    dimmed: Range[];
    /** Line the highlight originates from */
    originLine: number;
}

/** Applies and clears decorations in the visible text editors.
  *
  * Decorations in VS Code are bound to a `TextEditor` instance and are lost
  * when the editor is hidden (e.g., switching tabs). This service therefore
  * remembers the decorations per document and re-applies them whenever an
  * editor for that document becomes visible again. */
export class EditorService implements Highlighter, HighlightState, Disposable {
    private readonly dimDecoration: TextEditorDecorationType;
    /** Highlights per document URI (as string) */
    private readonly highlights = new Map<string, Highlight>();
    private readonly highlightsChanged = new EventEmitter<void>();
    private readonly subscriptions: Disposable[] = [];

    readonly onDidChangeHighlights = this.highlightsChanged.event;

    constructor() {
        this.dimDecoration = window.createTextEditorDecorationType({ opacity: '0.3' });
        this.subscriptions.push(
            this.highlightsChanged,
            window.onDidChangeVisibleTextEditors(editors => editors.forEach(e => this.reapply(e)))
        );
    }

    dimAllExcept(uri: Uri, keep: Range[], keepLine?: number): void {
        const editors = this.editorsFor(uri);
        if (editors.length === 0) {
            return;
        }

        // All visible editors for `uri` share the same document
        const document = editors[0].document;
        const dimmed: Range[] = [];
        for (let i = 0; i < document.lineCount; i++) {
            if (i === keepLine) { continue; }

            const lineRange = document.lineAt(i).range;
            const isKept = keep.some(range => lineRange.intersection(range) !== undefined);
            if (!isKept) {
                dimmed.push(lineRange);
            }
        }

        this.highlights.set(uri.toString(), { dimmed, originLine: keepLine ?? 0 });
        editors.forEach(e => e.setDecorations(this.dimDecoration, dimmed));
        this.highlightsChanged.fire();
    }

    clear(uri?: Uri): void {
        if (uri) {
            this.highlights.delete(uri.toString());
            this.editorsFor(uri).forEach(e => e.setDecorations(this.dimDecoration, []));
        } else {
            this.highlights.clear();
            window.visibleTextEditors.forEach(e => e.setDecorations(this.dimDecoration, []));
        }
        this.highlightsChanged.fire();
    }

    originLine(uri: Uri): number | undefined {
        return this.highlights.get(uri.toString())?.originLine;
    }

    dispose(): void {
        this.subscriptions.forEach(s => s.dispose());
        this.dimDecoration.dispose();
        this.highlights.clear();
    }

    private editorsFor(uri: Uri): TextEditor[] {
        const key = uri.toString();
        return window.visibleTextEditors.filter(e => e.document.uri.toString() === key);
    }

    private reapply(editor: TextEditor): void {
        const highlight = this.highlights.get(editor.document.uri.toString());
        if (highlight) {
            editor.setDecorations(this.dimDecoration, highlight.dimmed);
        }
    }
}

import {
    CodeLens, CodeLensProvider, Diagnostic, Disposable, EventEmitter, languages,
    TextDocument, Uri
} from 'vscode';
import { CommandIds, LspPosition } from './commands';
import { HighlightState } from './editor';

/** Source of the diagnostics published by the Monarch language server
  * (see `diagnosticsSource` in python-ifc-lsp) */
const MONARCH_DIAGNOSTIC_SOURCE = 'Monarch';

/** Provides code lenses for explaining taint flows:
  *  - "Explain taint flow" above every line with a Monarch diagnostic;
  *  - "Clear taint explanation" above the line whose flow is currently
  *    explained (replacing the "Explain" lens on that line).
  *
  * The lenses only invoke commands (see `MonarchCommands`); the provider
  * does not change any state itself. */
export class MonarchLensProvider implements CodeLensProvider, Disposable {
    private readonly lensesChanged = new EventEmitter<void>();
    private readonly subscriptions: Disposable[];

    readonly onDidChangeCodeLenses = this.lensesChanged.event;

    constructor(private readonly highlights: HighlightState) {
        this.subscriptions = [
            this.lensesChanged,
            highlights.onDidChangeHighlights(() => this.lensesChanged.fire()),
            languages.onDidChangeDiagnostics(() => this.lensesChanged.fire()),
            languages.registerCodeLensProvider({ language: 'python' }, this),
        ];
    }

    provideCodeLenses(document: TextDocument): CodeLens[] {
        const lenses: CodeLens[] = [];
        const origin = this.highlights.originLine(document.uri);

        if (origin !== undefined && origin < document.lineCount) {
            lenses.push(this.clearLens(document, origin));
        }

        // One "Explain" lens per line, at the first Monarch diagnostic on it
        const seenLines = new Set<number>();
        for (const diagnostic of this.monarchDiagnostics(document.uri)) {
            const line = diagnostic.range.start.line;
            if (line === origin || seenLines.has(line)) {
                continue;
            }
            seenLines.add(line);
            lenses.push(this.explainLens(document, diagnostic));
        }

        return lenses;
    }

    dispose(): void {
        this.subscriptions.forEach(s => s.dispose());
    }

    private monarchDiagnostics(uri: Uri): Diagnostic[] {
        return languages.getDiagnostics(uri)
            .filter(d => d.source === MONARCH_DIAGNOSTIC_SOURCE);
    }

    private explainLens(document: TextDocument, diagnostic: Diagnostic): CodeLens {
        const start = diagnostic.range.start;
        const position: LspPosition = { line: start.line, character: start.character };
        return new CodeLens(document.lineAt(start.line).range, {
            title: '$(search) Explain taint flow',
            command: CommandIds.showInfluencedLines,
            arguments: [document.uri.toString(), position]
        });
    }

    private clearLens(document: TextDocument, line: number): CodeLens {
        return new CodeLens(document.lineAt(line).range, {
            title: '$(eye-closed) Clear taint explanation',
            command: CommandIds.resetDecorations,
            arguments: [document.uri]
        });
    }
}

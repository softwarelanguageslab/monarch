import { commands, Disposable, Position, TextDocument, Uri, window, workspace } from 'vscode';
import { Highlighter } from './editor';
import { MonarchLspClient } from './lspclient';

/** A position as sent over LSP (0-based) */
export interface LspPosition {
    line: number;
    character: number;
}

/** Identifiers of the commands contributed by the extension (see package.json) */
export const CommandIds = {
    showInfluencedLines: 'monarch.showInfluencedLines',
    resetDecorations: 'monarch.resetDecorations',
} as const;

/** The commands contributed by the extension. Connects user actions to
  * requests on the language server and visualises their results. */
export class MonarchCommands implements Disposable {
    private readonly registrations: Disposable[];

    constructor(
        private readonly client: MonarchLspClient,
        private readonly highlighter: Highlighter
    ) {
        this.registrations = [
            commands.registerCommand(CommandIds.showInfluencedLines,
                (uri?: string, position?: LspPosition) => this.showInfluencedLines(uri, position)),
            commands.registerCommand(CommandIds.resetDecorations,
                (uri?: Uri) => this.resetDecorations(uri)),
        ];
    }

    dispose(): void {
        this.registrations.forEach(r => r.dispose());
    }

    /** Highlights the lines influenced by the expression at a position.
      *
      * Invoked in two ways:
      *  - from the command palette, without arguments: uses the cursor in
      *    the active editor;
      *  - from the "Show influenced lines" code action provided by the server
      *    (see `handleCodeAction` in python-ifc-lsp) or the "Explain" code
      *    lens (see lens.ts), with the document URI (as a string) and an LSP
      *    position `{ line, character }`. */
    async showInfluencedLines(uri?: string, position?: LspPosition): Promise<void> {
        if (!this.client.isRunning()) {
            window.showErrorMessage('Language server is not running');
            return;
        }

        const target = await this.resolveTarget(uri, position);
        if (!target) {
            window.showErrorMessage('No active editor');
            return;
        }

        const [document, pos] = target;
        if (document.languageId !== 'python') {
            window.showErrorMessage('This command only works with Python files');
            return;
        }

        try {
            const influenced = await this.client.getInfluencedLines(document, pos);
            if (influenced.length === 0) {
                window.showInformationMessage('No influenced lines found at this position');
                return;
            }

            this.highlighter.dimAllExcept(document.uri, influenced, pos.line);
        } catch (error) {
            window.showErrorMessage(`Failed to get influenced lines: ${error}`);
        }
    }

    /** Clears the highlights. When invoked with a URI, e.g. from the
      * "clear" code lens, only that document is cleared; from the command
      * palette, all documents are cleared. */
    resetDecorations(uri?: Uri): void {
        this.highlighter.clear(uri);
    }

    /** Determines the document and position to explain: the given ones if
      * invoked with arguments, otherwise the cursor in the active editor. */
    private async resolveTarget(uri?: string, position?: LspPosition): Promise<[TextDocument, Position] | undefined> {
        if (uri !== undefined && position !== undefined) {
            const document = await workspace.openTextDocument(Uri.parse(uri));
            return [document, new Position(position.line, position.character)];
        }

        const editor = window.activeTextEditor;
        return editor ? [editor.document, editor.selection.active] : undefined;
    }
}

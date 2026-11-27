import { Disposable, Position, Range, TextDocument, workspace } from 'vscode';
import {
    LanguageClient,
    LanguageClientOptions,
    ServerOptions,
} from 'vscode-languageclient/node'

// Protocol types for the custom Monarch LSP methods. Spans are 1-based.
interface SpanInfo {
    startLine: number;
    startColumn: number;
    endLine: number;
    endColumn: number;
}

interface InfluencedLinesResponse {
    influencedSpans: SpanInfo[];
}

const Methods = {
    getInfluencedLines: 'monarch/getInfluencedLines',
} as const;

/** Converts a 1-based span from the server into a (0-based) VS Code range */
function spanToRange(span: SpanInfo): Range {
    return new Range(
        span.startLine - 1,
        span.startColumn - 1,
        span.endLine - 1,
        span.endColumn - 1
    );
}

/** Client for the Monarch language server. Owns the underlying
  * `LanguageClient` and exposes the custom LSP requests as typed methods.
  * The server is purely request based, so the client does not touch the
  * editor: callers (see `commands.ts`) visualise the results. */
export class MonarchLspClient implements Disposable {
    private readonly client: LanguageClient;

    /**
     * @param serverCommand an already resolved command (absolute path or
     *        command on the `PATH`) used to start the language server
     */
    constructor(serverCommand: string) {
        const serverOptions: ServerOptions = {
            command: serverCommand,
            args: [],
            options: {}
        };

        const clientOptions: LanguageClientOptions = {
            documentSelector: [
                { scheme: 'file', language: 'python' }
            ],
            synchronize: {
                fileEvents: workspace.createFileSystemWatcher('**/*.py'),
                // notify the server when the settings change, which then
                // requests them (e.g., `pythonIfcLsp.taintGranularity`)
                configurationSection: 'pythonIfcLsp'
            },
            outputChannelName: 'Python IFC Language Server'
        };

        this.client = new LanguageClient(
            'pythonIfcLsp',
            'Python IFC Language Server',
            serverOptions,
            clientOptions
        );
    }

    /** Starts the client and the language server */
    start(): Promise<void> {
        return this.client.start();
    }

    /** Stops the client and the language server */
    async stop(): Promise<void> {
        if (this.client.isRunning()) {
            await this.client.stop();
        }
    }

    isRunning(): boolean {
        return this.client.isRunning();
    }

    dispose(): void {
        void this.client.dispose();
    }

    /** Asks the server which parts of `document` are influenced by the
      * expression at `position` */
    async getInfluencedLines(document: TextDocument, position: Position): Promise<Range[]> {
        const response = await this.client.sendRequest<InfluencedLinesResponse>(
            Methods.getInfluencedLines,
            {
                textDocumentUri: document.uri.toString(),
                position: { line: position.line, character: position.character }
            }
        );
        return response.influencedSpans.map(spanToRange);
    }
}

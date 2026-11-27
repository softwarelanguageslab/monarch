import {
    commands, ConfigurationTarget, Disposable, languages, StatusBarAlignment,
    StatusBarItem, ThemeColor, window, workspace
} from 'vscode';
import { MONARCH_DIAGNOSTIC_SOURCE } from './lens';

/** How precisely sources taint DataFrames (see `TaintGranularity` in
  * maf2-analysis and `pythonIfcLsp.taintGranularity` in package.json) */
export type TaintGranularity = 'column' | 'object';

const SECTION = 'pythonIfcLsp';
const KEY = 'taintGranularity';

/** Identifiers of the granularity commands (see package.json). The two
  * `*Active` commands only back the editor title button: one is shown per
  * mode, so that its icon reflects the current mode; both toggle. */
export const GranularityCommandIds = {
    toggle: 'monarch.toggleTaintGranularity',
    useColumn: 'monarch.useColumnTaint',
    useObject: 'monarch.useObjectTaint',
    columnActive: 'monarch.taintGranularity.columnActive',
    objectActive: 'monarch.taintGranularity.objectActive',
} as const;

const LABELS: Record<TaintGranularity, { short: string; long: string; icon: string }> = {
    column: { short: 'Column', long: 'column-level', icon: '$(symbol-field)' },
    object: { short: 'Object', long: 'object-level', icon: '$(table)' },
};

/** After a switch, how long diagnostics must be quiet before the
  * re-analysis is considered finished, and how long to wait at most. */
const SETTLE_MS = 500;
const TIMEOUT_MS = 10_000;

function currentGranularity(): TaintGranularity {
    const value = workspace.getConfiguration(SECTION).get<string>(KEY, 'column');
    return value === 'object' ? 'object' : 'column';
}

function countMonarchDiagnostics(): number {
    return languages.getDiagnostics()
        .reduce((n, [, ds]) => n + ds.filter(d => d.source === MONARCH_DIAGNOSTIC_SOURCE).length, 0);
}

/** Makes the taint granularity visible and easy to switch during a demo:
  *  - a status bar item showing the current mode, which toggles it;
  *  - commands (palette, keybinding, editor title button) to switch;
  *  - a notification after a switch, comparing the number of findings
  *    before and after the re-analysis.
  *
  * Switching only writes the setting: the language client synchronizes the
  * `pythonIfcLsp` section and the server re-analyses the open documents
  * (see `synchronize` in lspclient.ts). Changes made in the Settings UI are
  * therefore reflected in the same way. */
export class TaintGranularityControl implements Disposable {
    private readonly statusItem: StatusBarItem;
    private readonly subscriptions: Disposable[];
    /** Cancels the wait for the re-analysis after the last switch, if any */
    private pendingReport: Disposable | undefined;

    constructor() {
        this.statusItem = window.createStatusBarItem('monarch.taintGranularity', StatusBarAlignment.Left, 1000);
        this.statusItem.name = 'Monarch Taint Granularity';
        this.statusItem.command = GranularityCommandIds.toggle;

        this.subscriptions = [
            this.statusItem,
            commands.registerCommand(GranularityCommandIds.toggle, () => this.toggle()),
            commands.registerCommand(GranularityCommandIds.columnActive, () => this.toggle()),
            commands.registerCommand(GranularityCommandIds.objectActive, () => this.toggle()),
            commands.registerCommand(GranularityCommandIds.useColumn, () => this.set('column')),
            commands.registerCommand(GranularityCommandIds.useObject, () => this.set('object')),
            workspace.onDidChangeConfiguration(e => {
                if (e.affectsConfiguration(`${SECTION}.${KEY}`)) {
                    this.onGranularityChanged();
                }
            }),
        ];

        this.render(currentGranularity(), false);
        this.statusItem.show();
    }

    dispose(): void {
        this.pendingReport?.dispose();
        this.subscriptions.forEach(s => s.dispose());
    }

    private toggle(): Thenable<void> {
        return this.set(currentGranularity() === 'column' ? 'object' : 'column');
    }

    /** Writes the setting at the most specific level that already defines
      * it, so that the write is not shadowed by a more specific value.
      * Defaults to the user settings, which avoids creating a
      * `.vscode/settings.json` in the demo workspace. */
    private async set(granularity: TaintGranularity): Promise<void> {
        if (granularity === currentGranularity()) {
            window.showInformationMessage(`Already using ${LABELS[granularity].long} taint tracking`);
            return;
        }

        const config = workspace.getConfiguration(SECTION);
        const inspected = config.inspect<string>(KEY);
        const target = inspected?.workspaceFolderValue !== undefined ? ConfigurationTarget.WorkspaceFolder
            : inspected?.workspaceValue !== undefined ? ConfigurationTarget.Workspace
            : ConfigurationTarget.Global;
        await config.update(KEY, granularity, target);
    }

    /** Called synchronously when the setting changes. The server only
      * re-publishes diagnostics after it has received and processed the
      * change, so the diagnostics at this point are still the old ones. */
    private onGranularityChanged(): void {
        const granularity = currentGranularity();
        const before = countMonarchDiagnostics();
        this.render(granularity, true);
        this.pendingReport?.dispose();

        let settle: NodeJS.Timeout | undefined;
        let reanalysed = false;

        const finish = () => {
            this.pendingReport?.dispose();
            this.pendingReport = undefined;
            this.render(granularity, false);

            const mode = `${LABELS[granularity].long} taint tracking`;
            if (reanalysed) {
                const after = countMonarchDiagnostics();
                window.showInformationMessage(`Re-analysed with ${mode}: ${before} → ${after} finding${after === 1 ? '' : 's'}`);
            } else {
                // No open Python documents, or the server did not respond
                window.showInformationMessage(`Now using ${mode}`);
            }
        };

        const listener = languages.onDidChangeDiagnostics(() => {
            reanalysed = true;
            clearTimeout(settle);
            settle = setTimeout(finish, SETTLE_MS);
        });
        const timeout = setTimeout(finish, TIMEOUT_MS);

        this.pendingReport = new Disposable(() => {
            listener.dispose();
            clearTimeout(settle);
            clearTimeout(timeout);
        });
    }

    private render(granularity: TaintGranularity, analysing: boolean): void {
        const label = LABELS[granularity];
        const other = LABELS[granularity === 'column' ? 'object' : 'column'];
        const icon = analysing ? '$(sync~spin)' : label.icon;

        this.statusItem.text = `${icon} Taint: ${label.short}`;
        this.statusItem.tooltip =
            `Monarch taint tracking is ${label.long}.\n\n` +
            '• Column-level: only the sensitive columns of a DataFrame are tainted.\n' +
            '• Object-level: a DataFrame with a sensitive column is tainted as a whole.\n\n' +
            `Click to switch to ${other.long}.`;
        // Make object-level mode stand out, so the audience notices a switch
        this.statusItem.backgroundColor = granularity === 'object'
            ? new ThemeColor('statusBarItem.warningBackground')
            : undefined;
    }
}

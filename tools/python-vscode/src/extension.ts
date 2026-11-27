import { commands, ExtensionContext, window, workspace } from 'vscode';
import { MonarchCommands } from './commands';
import { EditorService } from './editor';
import { TaintGranularityControl } from './granularity';
import { MonarchLensProvider } from './lens';
import { resolveExecutable } from './exec';
import { MonarchLspClient } from './lspclient';

const DEFAULT_SERVER = 'python-ifc-lsp';

let lsp: MonarchLspClient | undefined;

export async function activate(context: ExtensionContext) {
    const config = workspace.getConfiguration('pythonIfcLsp');
    if (!config.get<boolean>('enabled', true)) {
        console.log('Python IFC Language Server is disabled');
        return;
    }

    const serverPath = config.get<string>('serverPath', DEFAULT_SERVER);
    console.log(`Looking for Python IFC Language Server at: ${serverPath}`);

    const serverCommand = await resolveExecutable(serverPath);
    if (!serverCommand) {
        const message = serverPath === DEFAULT_SERVER
            ? `Python IFC Language Server executable "${DEFAULT_SERVER}" not found in PATH. Please install the language server or configure the path in settings (pythonIfcLsp.serverPath).`
            : `Python IFC Language Server executable not found at: ${serverPath}. Please check the path in settings (pythonIfcLsp.serverPath).`;

        console.error(message);
        window.showErrorMessage(message, 'Open Settings').then(selection => {
            if (selection === 'Open Settings') {
                commands.executeCommand('workbench.action.openSettings', 'pythonIfcLsp.serverPath');
            }
        });
        return;
    }

    console.log(`Found Python IFC Language Server at: ${serverCommand}`);

    try {
        const editor = new EditorService();
        lsp = new MonarchLspClient(serverCommand);
        context.subscriptions.push(
            editor,
            lsp,
            new MonarchCommands(lsp, editor),
            new MonarchLensProvider(editor),
            new TaintGranularityControl()
        );

        await lsp.start();
        console.log('Python IFC Language Server started successfully');
    } catch (error) {
        const errorMessage = error instanceof Error ? error.message : String(error);
        window.showErrorMessage(`Failed to start Python IFC Language Server: ${errorMessage}`);
        console.error('Failed to start Python IFC Language Server:', error);
    }
}

export function deactivate(): Thenable<void> | undefined {
    // Returned so VS Code waits for the server to shut down; disposables
    // in `context.subscriptions` are not awaited.
    return lsp?.stop();
}

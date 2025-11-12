import { exec } from 'child_process';
import { promisify } from 'util';
import { workspace, ExtensionContext, window, commands, Range, TextEditorDecorationType, TextEditor, languages, CodeActionProvider, CodeAction, CodeActionKind } from 'vscode';
import {
  LanguageClient,
  LanguageClientOptions,
  ServerOptions,
  Executable
} from 'vscode-languageclient/node';

const execAsync = promisify(exec);

let client: LanguageClient | undefined;
let greyOutDecorationType: TextEditorDecorationType | undefined;

// Interface for influenced lines response
interface SpanInfo {
  startLine: number;
  startColumn: number;
  endLine: number;
  endColumn: number;
}

interface InfluencedLinesResponse {
  influencedSpans: SpanInfo[];
}

// Function to show influenced lines
async function showInfluencedLines(editor?: TextEditor) {
  if (!client) {
    window.showErrorMessage('Language server is not running');
    return;
  }

  const activeEditor = editor || window.activeTextEditor;
  if (!activeEditor) {
    window.showErrorMessage('No active editor');
    return;
  }

  const document = activeEditor.document;
  if (document.languageId !== 'python') {
    window.showErrorMessage('This command only works with Python files');
    return;
  }

  const position = activeEditor.selection.active;

  try {
    // Call the custom LSP method
    const response = await client.sendRequest<InfluencedLinesResponse>(
      'monarch/getInfluencedLines',
      {
        textDocumentUri: document.uri.toString(),
        position: { line: position.line, character: position.character }
      }
    );

    if (response.influencedSpans.length === 0) {
      window.showInformationMessage('No influenced lines found at this position');
      return;
    }

    // Create decoration type for greying out lines
    if (!greyOutDecorationType) {
      greyOutDecorationType = window.createTextEditorDecorationType({
        opacity: '0.3'
      });
    }

    // Get all lines in the document
    const totalLines = document.lineCount;
    console.log(response.influencedSpans)
    const influencedRanges = response.influencedSpans.map(span => {
      return new Range(
        span.startLine - 1,
        span.startColumn - 1,
        span.endLine - 1,
        span.endColumn - 1
      );
    });

    // Find all lines that are NOT influenced
    const greyedOutRanges: Range[] = [];
    for (let i = 0; i < totalLines; i++) {
      const line = document.lineAt(i);
      const lineRange = line.range;

      if (i == position.line) { continue; }

      // Check if this line overlaps with any influenced span
      const isInfluenced = influencedRanges.some(influencedRange =>
        lineRange.intersection(influencedRange) !== undefined
      );

      if (!isInfluenced) {
        greyedOutRanges.push(lineRange);
      }
    }

    // Apply the decoration
    activeEditor.setDecorations(greyOutDecorationType, greyedOutRanges);

    window.showInformationMessage(`Highlighted ${response.influencedSpans.length} influenced spans`);
  } catch (error) {
    window.showErrorMessage(`Failed to get influenced lines: ${error}`);
  }
}

// Function to reset decorations
function resetDecorations() {
  if (greyOutDecorationType) {
    window.visibleTextEditors.forEach(editor => {
      editor.setDecorations(greyOutDecorationType!, []);
    });
  }
  window.showInformationMessage('Decorations cleared');
}

async function checkExecutableExists(command: string): Promise<boolean> {
  try {
    // Use 'which' on Unix-like systems or 'where' on Windows
    const cmd = process.platform === 'win32' ? 'where' : 'which';
    await execAsync(`${cmd} ${command}`);
    return true;
  } catch {
    return false;
  }
}

export async function activate(context: ExtensionContext) {
  // Check if the language server is enabled
  const config = workspace.getConfiguration('pythonIfcLsp');
  const enabled = config.get<boolean>('enabled', true);

  if (!enabled) {
    console.log('Python IFC Language Server is disabled');
    return;
  }

  // Get the server path from configuration or use default
  const serverPath = config.get<string>('serverPath', 'python-ifc-lsp');

  console.log(`Looking for Python IFC Language Server at: ${serverPath}`);

  // Check if the executable exists
  const exists = await checkExecutableExists(serverPath);

  if (!exists) {
    const message = serverPath === 'python-ifc-lsp'
      ? 'Python IFC Language Server executable "python-ifc-lsp" not found in PATH. Please install the language server or configure the path in settings (pythonIfcLsp.serverPath).'
      : `Python IFC Language Server executable not found at: ${serverPath}. Please check the path in settings (pythonIfcLsp.serverPath).`;

    window.showErrorMessage(message, 'Open Settings').then(selection => {
      if (selection === 'Open Settings') {
        workspace.getConfiguration('pythonIfcLsp').update('serverPath', '', true);
      }
    });

    console.error(message);
    return;
  }

  console.log(`Found Python IFC Language Server at: ${serverPath}`);

  // Configure the server executable
  const serverExecutable: Executable = {
    command: serverPath,
    args: [],
    options: {}
  };

  const serverOptions: ServerOptions = serverExecutable;

  // Configure the client options
  const clientOptions: LanguageClientOptions = {
    documentSelector: [
      { scheme: 'file', language: 'python' }
    ],
    synchronize: {
      fileEvents: workspace.createFileSystemWatcher('**/*.py')
    },
    outputChannelName: 'Python IFC Language Server'
  };

  // Create and start the language client
  try {
    client = new LanguageClient(
      'pythonIfcLsp',
      'Python IFC Language Server',
      serverOptions,
      clientOptions
    );

    // Start the client and the server
    client.start().then(() => {
      console.log('Python IFC Language Server started successfully');
    }).catch((error) => {
      window.showErrorMessage(`Failed to start Python IFC Language Server: ${error.message || error}`);
      console.error('Failed to start Python IFC Language Server:', error);
    });

    console.log('Python IFC Language Server client created and starting...');

    // Register commands
    context.subscriptions.push(
      commands.registerCommand('monarch.showInfluencedLines', showInfluencedLines)
    );

    context.subscriptions.push(
      commands.registerCommand('monarch.resetDecorations', resetDecorations)
    );

  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : String(error);
    window.showErrorMessage(`Error creating Python IFC Language Server client: ${errorMessage}`);
    console.error('Error creating Python IFC Language Server client:', error);
  }
}

export function deactivate(): Thenable<void> | undefined {
  if (!client) {
    return undefined;
  }
  return client.stop();
}

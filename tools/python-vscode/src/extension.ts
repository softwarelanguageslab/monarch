import { exec } from 'child_process';
import { promisify } from 'util';
import { workspace, ExtensionContext, window } from 'vscode';
import {
  LanguageClient,
  LanguageClientOptions,
  ServerOptions,
  Executable
} from 'vscode-languageclient/node';

const execAsync = promisify(exec);

let client: LanguageClient | undefined;

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

# Python Information Flow Control Language Server

A VSCode extension that provides language server support for detecting information flows and leakage in Python code using the Monarch framework.

## Requirements

The extension requires the Language Server (`python-ifc-lsp`) to be installed in the system's `PATH`.

## Extension Settings

This extension provides the following settings:

- `pythonIfcLsp.serverPath`: Path to the `python-ifc-lsp` executable. Defaults to 'python-ifc-lsp' which will look for the executable in `PATH`.
- `pythonIfcLsp.trace.server`: Traces the communication between VS Code and the language server (off/messages/verbose).
- `pythonIfcLsp.enabled`: Enable/disable the Python IFC Language Server.

## Installation

### Installing the Language Server

First, ensure the `python-ifc-lsp` language server is installed on your system:

1. Build the language server:
   ```bash
   cd /path/to/python-ifc-lsp
   cabal build
   ```

2. Install it to a directory in your PATH, or add the build output to your PATH:
   ```bash
   # Option 1: Use `cabal install`, which will install it to ~/.cabal/bin
   cabal install

   # Option 1: Copy to a directory in PATH
   cp dist-newstyle/build/*/ghc-*/python-ifc-lsp-*/x/python-ifc-lsp/opt/build/python-ifc-lsp/python-ifc-lsp ~/.local/bin/

   # Option 2: Add to PATH in your shell config
   export PATH="/path/to/python-ifc-lsp/dist-newstyle/build/*/ghc-*/python-ifc-lsp-*/x/python-ifc-lsp/opt/build/python-ifc-lsp:$PATH"
   ```

### Installing the VSCode Extension

1. Install the extension dependencies:
   ```bash
   cd python-vscode
   npm install
   ```

2. Compile the extension:
   ```bash
   npm run compile
   ```

3. Install the extension in VSCode:
   - Press `F5` to open a new VSCode window with the extension loaded
   - Or package the extension: `vsce package` and install the `.vsix` file

## Usage

Once installed, the extension will automatically activate when you open a Python file.

**Important:** If the `python-ifc-lsp` executable is not found in your PATH, you will see an error message. Make sure the language server is installed and accessible, or configure the full path in settings.

The language server will provide:

- Hover information showing "Hello world" (example implementation)
- Code lenses with custom commands
- Information flow analysis (when fully implemented)

## Configuration

You can configure the extension through VSCode settings:

```json
{
  "pythonIfcLsp.serverPath": "/path/to/python-ifc-lsp",
  "pythonIfcLsp.enabled": true,
  "pythonIfcLsp.trace.server": "off"
}
```

## Development

To work on the extension:

1. Clone the repository
2. Run `npm install` to install dependencies
3. Run `npm run watch` to compile the extension in watch mode
4. Press `F5` to open a new VSCode window with the extension loaded
5. Make changes and reload the window to see updates

## License

See LICENSE file for details.

import { exec } from "child_process";
import * as path from "path";
import { promisify } from "util";
import { Uri, workspace } from "vscode";

const execAsync = promisify(exec);

/** Finds the absolute path to `executable` by looking it up on the `PATH` */
async function executableOnPath(executable: string): Promise<string | undefined> {
    try {
        // Use 'which' on Unix-like systems or 'where' on Windows
        const cmd = process.platform === 'win32' ? 'where' : 'which';
        const { stdout } = await execAsync(`${cmd} ${executable}`);
        // 'where' may print several matches, one per line: take the first
        const first = stdout.split(/\r?\n/)[0].trim();
        return first.length > 0 ? first : undefined;
    } catch {
        return undefined;
    }
}

/** Checks whether the file exists on the file system */
async function checkExists(path: Uri): Promise<boolean> {
    try {
        await workspace.fs.stat(path);
        return true;
    } catch {
        return false;
    }
}

/** Resolves `executable` to the command that should be used to start it.
  * `executable` is either a path to an existing executable (if it contains
  * a path separator) or the name of an executable on the `PATH`.
  * Returns `undefined` if the executable cannot be found. */
export async function resolveExecutable(executable: string): Promise<string | undefined> {
    const isPath = executable.includes('/') || executable.includes(path.sep);
    if (isPath) {
        return (await checkExists(Uri.file(executable))) ? executable : undefined;
    } else {
        return await executableOnPath(executable);
    }
}

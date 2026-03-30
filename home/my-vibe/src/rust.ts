import { execSync } from 'child_process';
import * as path from 'path';

/**
 * Runs the compiled Rust binary and returns its stdout.
 * Dispatches to the appropriate binary for the current platform.
 */
export function helloRust(): string {
  const platform = process.platform;
  let binaryName: string;
  if (platform === 'darwin') {
    binaryName = 'my-vibe';
  } else if (platform === 'linux') {
    binaryName = 'my-vibe-linux';
  } else {
    throw new Error(`Unsupported platform: ${platform}`);
  }

  const binaryPath = path.resolve(__dirname, '../target/debug', binaryName);
  try {
    const output = execSync(binaryPath, { encoding: 'utf-8' });
    return output.trim();
  } catch (err) {
    throw new Error(`Failed to execute Rust binary: ${err}`);
  }
}

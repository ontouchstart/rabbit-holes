import { execSync } from 'child_process';
import * as path from 'path';

/**
 * Runs the compiled Rust binary and returns its stdout.
 * Placeholder implementation – assumes binary is built to target/debug/my_vibe.
 */
export function helloRust(): string {
  const binaryPath = path.resolve(__dirname, '../target/debug/my-vibe');
  try {
    const output = execSync(binaryPath, { encoding: 'utf-8' });
    return output.trim();
  } catch (err) {
    throw new Error(`Failed to execute Rust binary: ${err}`);
  }
}

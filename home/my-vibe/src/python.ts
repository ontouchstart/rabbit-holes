import { execSync } from 'child_process';
import * as path from 'path';

/**
 * Executes the Python script and returns its stdout.
 * Placeholder – assumes Python 3 is available as `python3`.
 */
export function helloPython(): string {
  const scriptPath = path.resolve(__dirname, '../src/main.py');
  try {
    const output = execSync(`python3 ${scriptPath}`, { encoding: 'utf-8' });
    return output.trim();
  } catch (err) {
    throw new Error(`Failed to run Python script: ${err}`);
  }
}

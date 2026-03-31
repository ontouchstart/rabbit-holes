import { readFileSync, writeFileSync, mkdirSync } from "fs";
import { dirname, join } from "path";

const mapFile = join(import.meta.dirname, "package/cli.js.map");
const outDir = join(import.meta.dirname, "unpacked");

console.log("Reading source map...");
const map = JSON.parse(readFileSync(mapFile, "utf-8"));

const sources = map.sources || [];
const contents = map.sourcesContent || [];

console.log(`Found ${sources.length} source files.`);

let written = 0;
let skipped = 0;

for (let i = 0; i < sources.length; i++) {
  const src = sources[i];
  const content = contents[i];

  if (content == null) {
    skipped++;
    continue;
  }

  const outPath = join(outDir, src.replace(/^\.\.\//g, ""));
  mkdirSync(dirname(outPath), { recursive: true });
  writeFileSync(outPath, content);
  written++;
}

console.log(`Done! Wrote ${written} files to ${outDir}`);
if (skipped > 0) console.log(`Skipped ${skipped} files with no content.`);

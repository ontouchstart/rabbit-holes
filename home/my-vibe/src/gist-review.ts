/**
 * Minimal SDK Usage
 *
 * Uses all defaults: discovers skills, extensions, tools, context files
 * from cwd and ~/.pi/agent. Model chosen from settings or first available.
 */

import { createAgentSession } from "@mariozechner/pi-coding-agent";

const { session } = await createAgentSession();

session.subscribe((event) => {
	if (event.type === "message_update" && event.assistantMessageEvent.type === "text_delta") {
		process.stdout.write(event.assistantMessageEvent.delta);
	}
});

const url = "https://gist.githubusercontent.com/ontouchstart/15708cb1ef865db6f472ecde2e423bdc/raw/f588a4aebdf1b2e621b943330c1b4086d9ecc1a1/2026-04-01T15-49-20-919Z_1489865d-f2d7-40db-aed1-9e03dc6cefed.html"
await session.prompt(`Review this gist using curl: ${url}`);
session.state.messages.forEach((msg) => {
	console.log(msg);
});
console.log();

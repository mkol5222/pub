#!/usr/bin/env node

const { McpServer } = require("@modelcontextprotocol/sdk/server/mcp.js");
const { StdioServerTransport } = require("@modelcontextprotocol/sdk/server/stdio.js");
const { z } = require("zod");

const server = new McpServer({
  name: "mcp-node-echo",
  version: "0.1.0"
});

server.tool(
  "echo",
  {
    input: z.string().describe("String to echo back")
  },
  async ({ input }) => ({
    content: [
      {
        type: "text",
        text: `echo responds: ${input}`
      }
    ]
  })
);

async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
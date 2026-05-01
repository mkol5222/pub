MCP_NODE_ECHO_IMAGE ?= mcp-node-echo:local

.PHONY: mcp-node-echo-docker-build mcp-node-echo-docker-run

mcp-node-echo-docker-build:
	docker build -f mcp-node-echo/Dockerfile -t $(MCP_NODE_ECHO_IMAGE) .

mcp-node-echo-docker-run:
	docker run --rm -i $(MCP_NODE_ECHO_IMAGE)
mcp-node-echo-docker-inspect:
	npx @modelcontextprotocol/inspector -- docker run --rm -i $(MCP_NODE_ECHO_IMAGE)
mcp-node-echo-npx-inspect:
	npx @modelcontextprotocol/inspector -- npx -y mkol5222/pub mcp-node-echo
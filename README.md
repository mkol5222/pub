# Pub

## Python package execution with `uvx`

```bash
# demonstrate execution of a Python CLI using uvx
uvx --from "git+https://github.com/mkol5222/pub.git#subdirectory=py-hello" hello
```

`uvx github:mkol5222/pub/py-hello hello` does not work because `uvx` treats the
first positional argument as the executable name. For a tool defined in a Git
subdirectory, pass the package source via `--from`.

## Node.js package execution with `npx`

```bash
# demonstrate execution of a Node.js CLI using npx
npx --yes --package="git+https://github.com/mkol5222/pub.git" -- hello
```

The implementation lives in `npx-hello`, but npm exec does not reliably install
from a Git subdirectory package. The repo root exposes the `hello` bin and
forwards to `npx-hello/bin/hello.js`.

## Minimal MCP server

```bash
npx -y @modelcontextprotocol/inspector npx -y mkol5222/pub mcp-node-echo
```

## Run MCP server in Docker

```bash
make mcp-node-echo-docker-build
make mcp-node-echo-docker-run
```

The run target executes the stdio server with `docker run --rm -i`, which keeps
stdin attached for MCP clients such as the Inspector.

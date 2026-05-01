FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY mcp-node-echo ./mcp-node-echo

ENTRYPOINT ["node", "mcp-node-echo/bin/main.js"]
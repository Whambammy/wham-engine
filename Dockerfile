# Multi-stage lightweight Node container for MCP Registry hosting
FROM node:22-alpine AS builder

WORKDIR /app
COPY package.json ./
RUN npm install

COPY ecosystem ./ecosystem
COPY bin ./bin
COPY tsconfig.json ./

RUN npm run build

FROM node:22-alpine AS runner
WORKDIR /app
COPY --from=builder /app/package.json ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/ecosystem/registry.json ./ecosystem/registry.json
COPY --from=builder /app/ecosystem/catalog.json ./ecosystem/catalog.json
COPY --from=builder /app/bin ./bin

ENV NODE_ENV=production
ENV BASE_RPC_URL=https://mainnet.base.org

# Standard MCP stdio entrypoint
ENTRYPOINT ["node", "./bin/cli.js"]

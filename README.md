# WHAM ENGINE // 200 AI Agent Micro-Skills & Services

[![Smithery Compatible](https://img.shields.io/badge/Smithery-Compatible-blue.svg)](https://smithery.ai)
[![Model Context Protocol](https://img.shields.io/badge/MCP-Standard%20v1.0-emerald.svg)](https://modelcontextprotocol.io)
[![Base L2 Settlement](https://img.shields.io/badge/Base%20L2-USDC%20x402-blue.svg)](https://base.org)
[![Tools Count](https://img.shields.io/badge/Tools-200%20Micro--Services-purple.svg)](./ecosystem/catalog.json)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**WHAM ENGINE** is a comprehensive, production-grade Model Context Protocol (MCP) server fleet delivering **200 deterministic micro-services and skills** for autonomous AI agents (Claude, Cursor, Windsurf, LangChain, AutoGen). 

Each micro-tool operates with strict mathematical determinism, sub-millisecond execution, active defense isolation, and automated **Base L2 HTTP 402 (x402) USDC micropayments**.

---

## ⚡ Quickstart

### 1. Install via Smithery (Claude Desktop & Cursor)
Install directly into Claude Desktop using the Smithery CLI:
```bash
npx -y @smithery/cli install wham-engine --client claude
```

Or for Cursor:
```bash
npx -y @smithery/cli install wham-engine --client cursor
```

### 2. Manual Claude Desktop Configuration
Add the following to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "wham-engine": {
      "command": "node",
      "args": ["path/to/wham-engine/dist/ecosystem/hub_server.js"],
      "env": {
        "PAYMENT_WALLET": "0x9793E7269b3301893318dEa8338576Ba612F39B3",
        "BASE_RPC_URL": "https://mainnet.base.org"
      }
    }
  }
}
```

Or via NPX (zero local install):
```json
{
  "mcpServers": {
    "wham-engine": {
      "command": "npx",
      "args": ["-y", "wham-engine"],
      "env": {
        "PAYMENT_WALLET": "0x9793E7269b3301893318dEa8338576Ba612F39B3"
      }
    }
  }
}
```

---

## 🛠️ The 200 Micro-Tools Fleet

WHAM ENGINE spans 8 high-leverage domains organized across 200 distinct micro-services:

| Domain | Tool Count | Core Capabilities |
| :--- | :---: | :--- |
| **AST & Static Code Auditing** | 25 | AST complexity analysis, dead path detection, sandbox escape auditing, circular dependency detection, TypeScript contract verification |
| **Spatial / 3D & Robotics** | 45 | Point cloud ICP registration, exact CSG mesh booleans, Draco GLTF quantizers, quaternion SLERPs, Recast navmesh baking, Gaussian splat validators |
| **Vector & 2D Media Pipelines** | 20 | SVG optimization & sanitization, sub-pixel rasterization, EXIF scrubbing, WebP compression, QR/Sparkline generation |
| **Zero-Knowledge & Cryptography** | 25 | Poseidon Merkle proofs, ZK-SNARK Groth16 verification, EIP-712 typed hashing, Ed25519 keypair generation, Hashcash challenges |
| **Base L2 & Web3 Settlement** | 30 | Uniswap v3 tick math & quotes, ENS basename resolution, ERC-4337 UserOp gas estimation, Base blob gas projection, reentrancy audits |
| **AI Safety & Alignment** | 20 | Prompt injection filtering, demographic bias auditing, secret entropy scanning, PII redaction, jailbreak classification |
| **Resilient Networking & Ingestion** | 20 | Sliding-window Bloom filters, streaming JSONLines parsers, resilient HTTP probes, headless HTML fallbacks |
| **Deterministic Math & Formats** | 15 | Arbitrary precision financial ledgers, Parquet conversions, Cron validators, CRDT state synchronization |

Explore the full machine-readable catalog and schemas in [`ecosystem/catalog.json`](./ecosystem/catalog.json) and [`smithery.json`](./smithery.json).

---

## 💰 The x402 Base L2 Micropayment Protocol

When an autonomous agent invokes a tool without a payment signature, the server responds with a deterministic `HTTP 402 Payment Required` challenge containing:
- Target tool price in USDC (typically $0.005 - $0.05 USDC)
- Circle Native USDC Contract on Base: `0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913`
- Recipient payout wallet address
- Single-use cryptographic nonce

Once the calling agent broadcasts the sub-cent transfer on Base L2, it resubmits with `paymentSignature`, which settles and yields deterministic execution.

### Payout Wallet Configuration
Set your recipient address in `.env` or system environment:
```env
PAYMENT_WALLET=0xYourWalletAddressHere
BASE_RPC_URL=https://mainnet.base.org
```

---

## 🔒 Active Defense (Ghost Mirror)

WHAM ENGINE integrates embedded active defense. Malicious requests attempting code execution, prompt injections, or SQL injection vectors automatically trigger isolated decoy responses (Ghost Mirror tier), protecting the host environment without breaking client protocol flows.

---

## 🚀 Development & Building

```bash
# Install dependencies
npm install

# Compile TypeScript to dist/
npm run build

# Start MCP server directly over stdio
npm start

# Run local development with ts-node
npm run dev
```

---

## 📄 License
MIT License. Created by [Whambammy](https://github.com/Whambammy).

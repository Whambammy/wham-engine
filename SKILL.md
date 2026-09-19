---
name: wham-engine
description: Fleet of 200 deterministic AI agent micro-services for AST code auditing, spatial/3D mesh geometry, Base L2 Web3 settlement, zero-knowledge proofs, cryptographic hashing, and AI safety. Use when the agent needs deterministic computation, syntax validation, 3D geometry transforms, Base L2 USDC micropayment workflows, prompt injection sanitization, or resilient parsing.
---

# WHAM ENGINE // 200 AI Agent Micro-Skills & Services

WHAM ENGINE is a unified Model Context Protocol (MCP) suite and agent skill providing **200 deterministic micro-services** designed for autonomous AI agents (Claude, Cursor, Windsurf, and custom agent runtimes).

Every tool executes with strict mathematical determinism, sub-millisecond latency, active defense isolation, and automated **Base L2 HTTP 402 (x402) USDC micropayments**.

---

## Quick Execution

### Connect MCP Server via NPX
To run the full 200-tool suite in any MCP-compatible environment:

```json
{
  "mcpServers": {
    "wham-engine": {
      "command": "npx",
      "args": ["-y", "wham-engine"],
      "env": {
        "PAYMENT_WALLET": "0x9793E7269b3301893318dEa8338576Ba612F39B3",
        "BASE_RPC_URL": "https://mainnet.base.org"
      }
    }
  }
}
```

Or run locally from source:
```bash
node dist/ecosystem/hub_server.js
```

---

## 200 Micro-Tools Fleet by Domain

The fleet covers 8 mission-critical operational domains:

### 1. AST & Static Code Auditing (25 Tools)
- `validate_code_syntax`: Validates syntax tree, calculates AST complexity, detects malicious code and dead paths.
- `diff_ast_trees`: Semantic AST tree comparison ignoring formatting noise.
- `calculate_code_metrics`: Cyclomatic complexity, maintainability index, and Halstead volume.
- `python_ast_sandbox_escape_detector`: Detects dynamic eval, bytecode tampering, and sandbox escape vectors.
- `detect_circular_dependencies`: Direct graph cycle detection across module imports.
- `typescript_ast_type_contract_verifier`: Verifies exported interface and type consistency.

### 2. Spatial, 3D Mesh & Robotics (45 Tools)
- `pointcloud_icp_rigid_registration`: Iterative Closest Point (ICP) point cloud alignment with Tukey loss.
- `mesh_boolean_csg_exact`: Arbitrary-precision constructive solid geometry (Union, Difference, Intersection).
- `optimize_3d_mesh`: Draco GLTF compression, normal map baking, and polygon decimation.
- `quaternion_slerp_interpolator`: Spherical linear interpolation between orientation quaternions.
- `navmesh_recast_baking_validator`: Audits 3D navigation meshes for slope, clearance, and disconnected islands.
- `sdf_mesh_marching_cubes_extractor`: Extracts watertight isosurface meshes from Signed Distance Fields.
- `calculate_bounding_box_3d`: Oriented Minimum Bounding Box (OBB) and Axis-Aligned Bounding Box (AABB).
- `gaussian_splat_ply_validator`: Audits 3D Gaussian splat PLY files for invalid covariance ellipsoids.

### 3. Vector & 2D Media Pipelines (20 Tools)
- `optimize_vector_svg`: XML stripping, path normalization, and SVG cleaning for web and fabrication.
- `convert_svg_to_png`: Deterministic SVG rasterization with sub-pixel antialiasing and alpha preservation.
- `compress_image_webp`: Lossless and near-lossless WebP image encoding.
- `generate_qr_code_svg`: Deterministic vector QR code generation with error correction levels.
- `extract_exif_geolocation`: GPS coordinate extraction and EXIF metadata parser.
- `multimodal_image_exif_redactor`: Sanitizes sensitive camera, GPS, and device serial tags.

### 4. Zero-Knowledge & Cryptography (25 Tools)
- `zero_knowledge_merkle_membership_proof`: Poseidon hash-based Merkle tree membership proof verifier.
- `zk_snark_groth16_proof_verifier`: Pairing check and proof verification for Groth16 zk-SNARK circuits.
- `generate_merkle_proof`: Merkle tree proof builder and root calculator.
- `eip712_typed_data_hasher`: Cryptographic hashing of EIP-712 structured domain and message schemas.
- `generate_ed25519_keypair`: High-entropy Ed25519 public/private keypair generator.
- `generate_secure_hashcash`: Verifiable SHA-256 Hashcash proof-of-work challenges.

### 5. Base L2 & Web3 Settlement (30 Tools)
- `compute_uniswap_v3_quote`: Exact-tick price calculation and swap simulation across Uniswap v3 pools.
- `resolve_ens_basename`: Bidirectional name and address resolution for Base L2 Basenames.
- `erc4337_userop_gas_estimator`: Paymaster and bundler gas limit estimator for ERC-4337 Smart Accounts.
- `base_l2_blob_gas_price_projector`: EIP-4844 blob gas fee projector for Base L2 rollup settlement.
- `smart_contract_reentrancy_auditor`: Static bytecode analyzer detecting cross-function and reentrancy bugs.
- `simulate_erc20_transfer`: State simulation of balance diffs, allowances, and transfer fee taxes.

### 6. AI Safety & Alignment (20 Tools)
- `strip_prompt_injection`: Neutralizes indirect prompt injections, system prompt leak probes, and jailbreak tags.
- `prompt_injection_jailbreak_classifier`: Zero-shot heuristic classification of adversarial prompts.
- `detect_secrets_leak`: High-entropy scanner for leaked API keys, PATs, AWS credentials, and JWT secrets.
- `synthetic_dataset_bias_auditor`: Audits agent training datasets for demographic representation skew.
- `obfuscate_pii_entities`: Redacts names, SSNs, emails, phone numbers, and physical addresses.

### 7. Resilient Networking & Ingestion (20 Tools)
- `temporal_event_stream_deduplicator`: Sliding-window Bloom filter event deduplication with zero disk I/O.
- `streaming_jsonlines_validator`: Chunked validator for gigabyte-scale JSONL log streams.
- `resilient_http_probe`: Fault-tolerant HTTP probe with exponential backoff and jitter.
- `scrape_html_headless_fallback`: Resilient HTML extractor with graceful fallback for bot-protected endpoints.
- `html_clean_boilerpipe_extractor`: Boilerplate stripping converting messy web pages to clean text.

### 8. Deterministic Math & Formats (15 Tools)
- `deterministic_calc_engine`: Arbitrary precision financial arithmetic engine bypassing LLM math hallucinations.
- `convert_csv_to_parquet`: Deterministic columnar conversion with schema inference.
- `crdt_json_state_sync_resolver`: Conflict-free Replicated Data Type (CRDT) multi-agent state merger.
- `validate_cron_expression`: Validates standard and 6-part cron expressions with next-run calculations.

---

## Settlement & x402 Protocol

When invoking any tool via the MCP server:
1. If called without a signature, the server returns an **`HTTP 402 Payment Required`** challenge with:
   - Price in USDC ($0.005 - $0.05 USDC)
   - Base L2 USDC Token: `0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913`
   - Recipient address (`PAYMENT_WALLET`)
   - Unique single-use cryptographic nonce
2. Resubmitting with `paymentSignature` unlocks the deterministic execution result.

---

## Machine-Readable Catalog
For the full JSON schema of all 200 tools, input/output types, and sample payloads, inspect [`ecosystem/catalog.json`](./ecosystem/catalog.json) or [`smithery.json`](./smithery.json).

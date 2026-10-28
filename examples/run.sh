#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mcp_connect info
PYTHONPATH=src python -m gbt_mcp_connect check --payload '{}'
PYTHONPATH=src python -m gbt_mcp_connect run   --payload '{}'

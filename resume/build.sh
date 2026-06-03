#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SOURCE_FILE="${SCRIPT_DIR}/resume.typ"
OUTPUT_FILE="${REPO_ROOT}/Sidney_Lisanza_Resume.pdf"

if ! command -v typst >/dev/null 2>&1; then
  echo "Error: typst is not installed or not on PATH." >&2
  echo "Install Typst, then rerun: ${0}" >&2
  exit 1
fi

typst compile "${SOURCE_FILE}" "${OUTPUT_FILE}"
echo "Wrote ${OUTPUT_FILE}"

#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SYMLINK_PATH="$SCRIPT_DIR/symlink-zsh"
OUTPUT_FILE="$SCRIPT_DIR/settings.json"

if [[ ! -L "$SYMLINK_PATH" ]]; then
  echo "ERROR: '$SYMLINK_PATH' is not a symlink." >&2
  echo "Create it first, e.g.:" >&2
  echo "  ln -sfvn ~/.zshrc \"$SYMLINK_PATH\"" >&2
  exit 1
fi

REAL_ZSH="$(readlink "$SYMLINK_PATH")"

if [[ "$REAL_ZSH" != /* ]]; then
  REAL_ZSH="$(cd "$(dirname "$SYMLINK_PATH")" && pwd)/$REAL_ZSH"
fi

if [[ ! -f "$REAL_ZSH" ]]; then
  echo "ERROR: Symlink target does not exist: '$REAL_ZSH'" >&2
  exit 1
fi

cp "$REAL_ZSH" "$OUTPUT_FILE"
echo "Done. Settings written to: $OUTPUT_FILE"

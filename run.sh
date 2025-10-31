#!/usr/bin/env bash
set -euo pipefail

# Create and activate venv preferring `python3.12` if available, otherwise use system `python3`
if [ ! -d "emoji_env" ]; then
  if command -v python3.12 >/dev/null 2>&1; then
    python3.12 -m venv emoji_env
  else
    python3 -m venv emoji_env
  fi
fi
source emoji_env/bin/activate

# Install deps
pip install -r requirements.txt

# macOS camera permissions note
echo "If macOS prompts for camera permissions, approve for Terminal/VSCode." || true

# Run app
python 41.py



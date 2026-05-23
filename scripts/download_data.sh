#!/usr/bin/env bash
set -euo pipefail

DATASET="sfarry/jet-tagging-lhcb"
TARGET="data"

if ! command -v kaggle &> /dev/null; then
    echo "Error: kaggle CLI not found. Install it with: pip install kaggle"
    echo "Then place your API token at ~/.kaggle/access_token"
    exit 1
fi

mkdir -p "$TARGET"
echo "Downloading dataset: $DATASET -> $TARGET/"
kaggle datasets download -d "$DATASET" -p "$TARGET" --unzip
echo "Done."

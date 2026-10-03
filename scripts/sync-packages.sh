#!/usr/bin/env bash
set -euo pipefail
repo="$(cd "$(dirname "$0")/.." && pwd)"
for package in codex claude; do
  target="$repo/packages/$package/skills"
  if [ -e "$target" ]; then
    find "$target" -mindepth 1 -maxdepth 1 -exec rm -rf {} +
  else
    mkdir -p "$target"
  fi
  cp -R "$repo/skills/." "$target/"
done

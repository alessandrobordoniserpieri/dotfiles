#!/usr/bin/env bash
set -euo pipefail
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "▶ Installo Claude Code CLI..."
npm install -g @anthropic-ai/claude-code

echo "▶ Copio config Claude globale..."
mkdir -p ~/.claude/skills
cp -rf "$DOTFILES/claude/skills/." ~/.claude/skills/ 2>/dev/null || true
cp -f  "$DOTFILES/claude/CLAUDE.md" ~/.claude/CLAUDE.md 2>/dev/null || true

echo "✅ Setup completato. Claude Code pronto."
echo "Per aggiungere MCP: claude mcp add --scope user <nome> -- <comando>"

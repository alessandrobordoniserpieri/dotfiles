#!/usr/bin/env bash
set -euo pipefail
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "▶ Installo Claude Code CLI..."
npm install -g @anthropic-ai/claude-code@latest

echo "▶ Installo Ruflo globalmente..."
npm install -g ruflo@latest

echo "▶ Copio config Claude globale..."
mkdir -p ~/.claude/skills
find "$DOTFILES/claude/skills" -mindepth 2 -maxdepth 2 -type d -exec cp -r {} ~/.claude/skills/ \; 2>/dev/null || true
cp -f "$DOTFILES/claude/CLAUDE.md" ~/.claude/CLAUDE.md 2>/dev/null || true
cp -f "$DOTFILES/claude/settings.json" ~/.claude/settings.json 2>/dev/null || true

echo "▶ Registro MCP Ruflo (globale, cross-progetto)..."
claude mcp remove --scope user ruflo >/dev/null 2>&1 || true
claude mcp add --scope user ruflo -- ruflo mcp start

echo "✅ Setup completato."

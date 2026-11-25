#!/usr/bin/env bash
# ============================================================
# setup.sh — Kit Agence Web/IA
# Installe les 7 agents Claude Code dans ~/.claude/agents/
# ============================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENTS_DIR="$HOME/.claude/agents"
AGENTS_SRC="$SCRIPT_DIR/.claude/agents"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║    Kit Agence Web/IA — Installation      ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# Vérifier Claude Code
if ! command -v claude &> /dev/null; then
  echo -e "${RED}✗ Claude Code n'est pas installé.${NC}"
  echo "  Installe-le avec : npm install -g @anthropic-ai/claude-code"
  exit 1
fi

CLAUDE_VERSION=$(claude --version 2>/dev/null || echo "inconnu")
echo -e "${GREEN}✓${NC} Claude Code détecté : $CLAUDE_VERSION"

# Créer le dossier agents
if [ ! -d "$AGENTS_DIR" ]; then
  mkdir -p "$AGENTS_DIR"
  echo -e "${GREEN}✓${NC} Dossier créé : $AGENTS_DIR"
else
  echo -e "${GREEN}✓${NC} Dossier existant : $AGENTS_DIR"
fi

echo ""
echo "Installation des agents..."
echo ""

AGENTS=(
  "chef-de-projet.md"
  "ux-designer.md"
  "frontend-builder.md"
  "chatbot-engineer.md"
  "qa-tester.md"
  "deployer.md"
  "code-reviewer.md"
)

INSTALLED=0

for agent in "${AGENTS[@]}"; do
  SRC="$AGENTS_SRC/$agent"
  DST="$AGENTS_DIR/$agent"

  if [ ! -f "$SRC" ]; then
    echo -e "  ${RED}✗${NC} Fichier manquant : $SRC"
    continue
  fi

  if [ -f "$DST" ]; then
    echo -e "  ${YELLOW}↻${NC} Mise à jour : $agent"
  else
    echo -e "  ${GREEN}+${NC} Installation : $agent"
  fi

  cp "$SRC" "$DST"
  INSTALLED=$((INSTALLED + 1))
done

echo ""
echo "────────────────────────────────────────────"
echo -e "${GREEN}✓ $INSTALLED agent(s) installé(s) dans $AGENTS_DIR${NC}"
echo ""
echo "Prochaines étapes :"
echo ""
echo "  1. Ajouter les MCP (une seule fois) :"
echo "     claude mcp add playwright -- npx -y @playwright/mcp@latest"
echo "     claude mcp add --transport http supabase https://mcp.supabase.com/mcp"
echo "     claude mcp add --transport http github https://api.githubcopilot.com/mcp/"
echo ""
echo "  2. Démarrer un projet client :"
echo "     mkdir mon-client && cd mon-client"
echo "     cp $SCRIPT_DIR/.mcp.json.example ./.mcp.json"
echo "     cp $SCRIPT_DIR/CLAUDE.md ."
echo "     claude"
echo ""
echo "  3. Dans Claude Code, taper /agents pour voir tes 7 agents."
echo ""

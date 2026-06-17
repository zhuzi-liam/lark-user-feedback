#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${LARK_USER_FEEDBACK_REPO:-https://github.com/zhuzi-liam/lark-user-feedback.git}"
INSTALL_ROOT="${LARK_USER_FEEDBACK_HOME:-$HOME/lark-user-feedback}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || pwd)"
SKILL="$ROOT/skills/lark-user-feedback"

if [ ! -f "$SKILL/SKILL.md" ]; then
  if [ -d "$INSTALL_ROOT/.git" ]; then
    git -C "$INSTALL_ROOT" pull --ff-only
  else
    git clone "$REPO_URL" "$INSTALL_ROOT"
  fi
  ROOT="$INSTALL_ROOT"
  SKILL="$ROOT/skills/lark-user-feedback"
fi

if [ ! -f "$SKILL/SKILL.md" ]; then
  echo "Missing skill: $SKILL/SKILL.md" >&2
  exit 1
fi

install_link() {
  local target="$1"
  mkdir -p "$(dirname "$target")"

  if [ -L "$target" ]; then
    rm "$target"
  elif [ -e "$target" ]; then
    mv "$target" "$target.backup.$(date +%Y%m%d%H%M%S)"
  fi

  ln -s "$SKILL" "$target"
}

install_link "$HOME/.codex/skills/lark-user-feedback"
install_link "$HOME/.claude/skills/lark-user-feedback"

echo "Installed lark-user-feedback for Codex and Claude Code."
grep '^version:' "$SKILL/SKILL.md"

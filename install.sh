#!/usr/bin/env bash
# Crea enlaces simbólicos desde este repo a $HOME (guarda copia de lo existente).
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
for p in .config/hypr .config/noctalia .local/bin/updates-run .local/bin/updates-count; do
  [ -e "$DIR/$p" ] || continue
  dst="$HOME/$p"
  mkdir -p "$(dirname "$dst")"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then mv "$dst" "$dst.bak-$(date +%Y%m%d)"; fi
  ln -sfn "$DIR/$p" "$dst"
  echo "enlazado $dst"
done

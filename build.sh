#!/bin/bash

MODFILE=${MOD_FILE:-""}

if [[ -f "./mods.d/$MODFILE" ]]; then
  echo "::group::=== 📦 $(basename "$MODFILE")==="
  bash "$MODFILE"
  echo "::endgroup::"
fi
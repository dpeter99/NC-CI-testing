#!/bin/bash

modFile=${MOD_FILE:-"mods.d/SnowyWeaponry.sh"}

echo "::group::=== 🛠️ Building $(basename "$modFile") ==="

if [[ -f "./$modFile" ]]; then
  echo "::group::=== 📦 $(basename "$modFile")==="
  bash "$modFile"
  echo "::endgroup::"
fi
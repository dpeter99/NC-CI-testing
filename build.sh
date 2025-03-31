#!/bin/bash

modFile=${MOD_FILE:-"mods.d/SnowyWeaponry.sh"}

export UTILS_FILE="$(pwd)/utils.sh"

echo "::group::=== 🛠️ Building $(basename "$modFile") ==="

if [[ -f "./$modFile" ]]; then
  echo "::group::=== 📦 $(basename "$modFile")==="
  bash "$modFile"
  echo "::endgroup::"
fi
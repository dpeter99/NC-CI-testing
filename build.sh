#!/bin/bash

local modFile=${MOD_FILE}

echo "::group::=== 🛠️ Building $(basename "$modFile") ==="

if [[ -f "./$modFile" ]]; then
  echo "::group::=== 📦 $(basename "$modFile")==="
  bash "$modFile"
  echo "::endgroup::"
fi
#!/bin/bash

MODFILE=${MOD_FILE:-""}

if [[ -f "./mods.d/$MODFILEt" ]]; then
  echo "::group::=== 📦 $(basename "$MODFILEt")==="
  bash "$MODFILEt"
  echo "::endgroup::"
fi
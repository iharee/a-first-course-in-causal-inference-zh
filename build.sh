#!/bin/sh
# Requires Tectonic (install separately with: brew install tectonic).
# No language model is used. The finished PDF is copied to pdf/.
set -eu
project_dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
cd "$project_dir"
mkdir -p build pdf
tectonic --keep-logs --keep-intermediates --outdir build Causalinference-zh.tex "$@"
cp build/Causalinference-zh.pdf pdf/A-First-Course-in-Causal-Inference-zh.pdf

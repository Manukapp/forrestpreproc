#!/bin/bash
set -e -u #e: error, stop u: undefined variable, stop
brain=$1
out=$2
mkdir -p "$(dirname $out)"
fsl5.0-mcflirt -i "$brain" -o "$out"


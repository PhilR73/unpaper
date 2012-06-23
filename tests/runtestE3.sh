#!/bin/sh

echo "[E1] Splitting 2-page layout into seperate output pages."

set -e
set -x

for i in 1 2; do
    rm -f tests/resultsE30$i.pbm
done
./unpaper -v --overwrite --layout double --output-pages 2 tests/imgsrcE001.pbm tests/resultsE301.pbm tests/resultsE302.pbm

for i in 1 2; do
    [ -f tests/resultsE30$i.pbm ]
done

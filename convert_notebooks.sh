#!/bin/bash
NOTEBOOKS_DIR="./notebooks"
OUTPUT_DIR="./notebooks"

for nb in $(find $NOTEBOOKS_DIR -name '*.ipynb'); do
    # Convertir cada notebook a PDF
    jupyter nbconvert --to pdf $nb --output-dir $OUTPUT_DIR
done
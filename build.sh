#!/bin/bash

# File names
TEX_FILE="my_document.tex"
BIB_FILE="references.bib"

# Compile LaTeX document
pdflatex $TEX_FILE
biber ${TEX_FILE%.*}  # Run biber without file extension
pdflatex $TEX_FILE
pdflatex $TEX_FILE

# Clean up auxiliary files
rm ${TEX_FILE%.*}.aux ${TEX_FILE%.*}.bbl ${TEX_FILE%.*}.bcf ${TEX_FILE%.*}.blg ${TEX_FILE%.*}.log ${TEX_FILE%.*}.run.xml

echo "====================="

echo "Compilation complete."

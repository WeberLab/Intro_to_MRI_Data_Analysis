#!/bin/bash

pandoc "$1" \
    --include-in-header chapter_break.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    -V title="MRI Analysis For Beginners" \
    -V author="Alexander Mark Weber" \
    -V date="Aug 2023" \
    --pdf-engine=xelatex \
    --highlight-style pygments.theme \
    --include-in-header inline_code.tex \
    --toc \
    -f markdown-implicit_figures \
    -o "$2"
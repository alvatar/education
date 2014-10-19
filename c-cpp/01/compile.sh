#!/bin/sh
pdflatex -shell-escape 01.tex
rm *aux
rm *log
rm *out
open -a Preview 01.pdf

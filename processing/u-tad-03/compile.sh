#!/bin/sh
pdflatex -shell-escape *.tex
rm *aux
rm *log
rm *out
evince *.pdf

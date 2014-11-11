#!/usr/local/bin/zsh
/usr/texbin/pdflatex -shell-escape 04.tex
rm *aux
rm *log
rm *out
open -a Preview 04.pdf

#!/usr/local/bin/zsh
/usr/texbin/pdflatex -shell-escape 03.tex
rm *aux
rm *log
rm *out
open -a Preview 03.pdf

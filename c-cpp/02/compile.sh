#!/usr/local/bin/zsh
/usr/texbin/pdflatex -shell-escape 02.tex
rm *aux
rm *log
rm *out
open -a Preview 02.pdf

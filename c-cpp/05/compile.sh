#!/usr/local/bin/zsh
/usr/texbin/pdflatex -shell-escape 05.tex
rm *aux
rm *log
rm *out
open -a Preview 05.pdf

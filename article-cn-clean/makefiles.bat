@echo off
rem 编译: XeLaTeX -> BibTeX -> XeLaTeX -> XeLaTeX
xelatex --synctex=-1 main.tex
bibtex main
xelatex --synctex=-1 main.tex
xelatex --synctex=-1 main.tex

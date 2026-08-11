@echo off
rem 编译: XeLaTeX -> BibTeX -> XeLaTeX -> XeLaTeX
rem 所有中间产物和最终 PDF 都输出到 out 文件夹 (out\main.pdf)
if not exist out mkdir out
xelatex --synctex=-1 -output-directory=out main.tex
bibtex out/main
xelatex --synctex=-1 -output-directory=out main.tex
xelatex --synctex=-1 -output-directory=out main.tex
echo.
echo 完成! PDF 位于 out\main.pdf

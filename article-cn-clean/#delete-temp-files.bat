@echo off
rem 清理 out 文件夹里的编译临时文件，保留最终 PDF (out\main.pdf)
if exist out (
  del /q "out\*.aux" "out\*.bbl" "out\*.blg" "out\*.log" "out\*.out" "out\*.toc" "out\*.bcf" "out\*.xml" "out\*.synctex" "out\*.synctex.gz" "out\*.nlo" "out\*.nls" "out\*.bak" "out\*.ind" "out\*.idx" "out\*.ilg" "out\*.lof" "out\*.lot" "out\*.ent-x" "out\*.tmp" "out\*.ltx" "out\*.los" "out\*.lol" "out\*.loc" "out\*.listing" "out\*.gz" "out\*.userbak" "out\*.nav" "out\*.snm" "out\*.vrb" "out\*.fls" "out\*.xdv" "out\*.fdb_latexmk"
)

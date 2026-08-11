# article-cn-clean（最干净的中文文章模板）

基于 `article-cn/ctexart-temp.tex` 整理出的最小可用用例，去掉了所有 PDF、重复模板和编译脚本。

## 保留的文件

| 文件 | 用途 |
|------|------|
| `main.tex` | 主文件（ctexart 类中文模板，含常用宏包/定理/参考文献/插图/表格等示例）|
| `reference.bib` | 参考文献库（BibTeX 格式）|
| `thuthesis-numeric.bst` | 参考文献样式（顺序编码制，GB/T 7714-2015，默认使用）|
| `thuthesis-author-year.bst` | 参考文献样式（著者-出版年制，可选）|
| `figures/image1.eps`、`figures/image2.eps` | 示例插图 |
| `#delete-temp-files.bat` | 一键清理编译产生的临时文件 |
| `makefiles.bat` | 一键编译（Windows）|

## 编译方法（需 XeLaTeX + BibTeX）

```
xelatex main
bibtex main
xelatex main
xelatex main
```

或直接双击 `makefiles.bat`。

编译完成后可用 `#delete-temp-files.bat` 清理 `.aux/.log/.synctex` 等临时文件。

## 切换参考文献样式

`main.tex` 中默认：

```tex
\bibliographystyle{thuthesis-numeric}   % 顺序编码制
\usepackage[numbers,sort&compress]{natbib}
```

如需著者-出版年制，改为：

```tex
\bibliographystyle{thuthesis-author-year}
\usepackage[authoryear]{natbib}
```

## 常用修改点

- 标题 / 作者 / 摘要 / 关键词：在 `\maketitle` 前的 `\title{}`、`\author{}`、`abstract` 环境里改。
- 删除全部示例内容：保留 `\begin{document}` 到 `\maketitle` + 摘要 + 你需要的小节即可。
- 插图：把 `figures/` 里的图片替换成自己的，正文里用 `\includegraphics` 引用。

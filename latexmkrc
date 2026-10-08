# Overleaf passes -pdf, so make the "pdflatex" command run XeLaTeX (fontspec needs it)
$pdf_mode = 5;
$pdflatex = "xelatex -interaction=nonstopmode -synctex=1 %O %S";
$xelatex = "xelatex -interaction=nonstopmode -synctex=1 %O %S";

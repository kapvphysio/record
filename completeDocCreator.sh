latexmk -pdf
awk -f forToc.awk combinedRecord.toc > customTOC.tex
latexmk -pdf customTOC.tex

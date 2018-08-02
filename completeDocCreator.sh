latexmk -pdf combinedRecord.tex
awk -f forToc.awk combinedRecord.toc > customTOC.tex
latexmk -pdf firstPageAndCertificate.tex
latexmk -pdf customTOC.tex
pdftk ./firstPageAndCertificate.pdf ./customTOC.pdf ./combinedRecord.pdf cat output finalRecord.pdf

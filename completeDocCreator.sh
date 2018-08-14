latexmk -pdf combinedRecord.tex
pdftk ./combinedRecord.pdf cat 3-end output modifiedCombinedRecord.pdf
awk -f forToc.awk combinedRecord.toc > customTOC.tex
latexmk -pdf firstPageAndCertificate.tex
latexmk -pdf customTOC.tex
pdftk ./firstPageAndCertificate.pdf ./customTOC.pdf ./modifiedCombinedRecord.pdf cat output finalRecord.pdf

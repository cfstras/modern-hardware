
PAPER = secondary-storage

all: ${PAPER}.pdf

.PHONY: clean
clean:
	rm -f *.pdf *.aux *.log *.synctex.gz *.dvi *.bbl *.blg
.PHONY: ${PAPER}.pdf
${PAPER}.pdf:
	latex ${PAPER}.tex
	bibtex ${PAPER}.aux
	latex ${PAPER}.tex
	pdflatex ${PAPER}.tex


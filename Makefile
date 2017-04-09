.SUFFIXES: .md .pdf

MDFILES = $(wildcard *.md)
PDFFILES = $(patsubst %.md,%.pdf, $(MDFILES))
MD2PDF = ./markdown2pdf

default: $(PDFFILES)
	echo $(PDFFILES)

.md.pdf: $(MDFILES)
	$(MD2PDF) $<

clean:
	rm -rf `ls *.pdf | egrep -v c99.pdf`

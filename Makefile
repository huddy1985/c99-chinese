.SUFFIXES: .md .pdf

MDFILES = $(wildcard *.md)
PDFFILES = $(patsubst %.md,%.pdf, $(MDFILES))
MD2PDF = /home/huddy1985/tools/markdown2pdf

default: $(PDFFILES)
	echo $(PDFFILES)

.md.pdf: $(MDFILES)
	$(MD2PDF) $<

clean:
	rm -rf *.pdf

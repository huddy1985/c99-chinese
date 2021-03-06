.SUFFIXES: .md .pdf

MDFILES = $(wildcard *.md)
PDFFILES = $(patsubst %.md,%.pdf, $(MDFILES))
MD2PDF = ./markdown2pdf

default: $(PDFFILES)
	make -C ./question
	echo $(PDFFILES)

.md.pdf: $(MDFILES)
	$(MD2PDF) $<

clean:
	make clean -C ./question
	rm -rf `ls *.pdf | egrep -v c99.pdf`

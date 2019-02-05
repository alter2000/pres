# vim:ts=4 sw=4
# All markdown files in the working directory
SRC = $(wildcard *.md)
PREFIX = $(HOME)/.pandoc
REVEALPREFIX = $(PREFIX)/reveal.js
EXTENSION = md
BIB = $(HOME)/static/documents/bibs/socbib-pandoc.bib
DOCX = $(SRC:.$(EXTENSION)=.docx)
HTML = $(SRC:.$(EXTENSION)=.html)
PDFS = $(SRC:.$(EXTENSION)=.pdf)
TEX = $(SRC:.$(EXTENSION)=.tex)
REVEALJS = $(SRC:.$(EXTENSION)=.rjs.html)

default: revealjs

re:	default clean
all:	$(PDFS) $(HTML) $(TEX) $(DOCX) $(REVEALJS)

pdf:	$(PDFS)
html:	$(HTML)
tex:	$(TEX)
docx:	$(DOCX)
mdown:	$(SRC)
revealjs:	$(REVEALJS)

%.html:	%.$(EXTENSION)
	pandoc -w html -o $@ $< \
		--self-contained \
		--css=$(PREFIX)/css/pandoc.css
		# --template=$(PREFIX)/templates/html.template
		# --bibliography=$(BIB)
	@test -n $(BROWSER) && $(BROWSER) $@

%.tex:	%.$(EXTENSION)
	pandoc -w latex -s -o $@ $< \
		--pdf-engine=pdflatex
		# --template=$(PREFIX)/templates/latex.template
		# --bibliography=$(BIB)

%.rjs.html:	%.$(EXTENSION)
	pandoc -w revealjs -o $@ $< \
		--mathjax \
		-V revealjs-url=$(REVEALPREFIX) \
		--self-contained
		# --template=$(PREFIX)/templates/revealjs.template
	@test -n $(BROWSER) && $(BROWSER) $@

%.pdf:	%.$(EXTENSION)
	pandoc -s \
		--pdf-engine=pdflatex -o $@ $< \
		--bibliography=$(BIB)
		# --template=$(PREFIX)/templates/latex.template
	@test -n $(BROWSER) && $(BROWSER) $@

%.docx:	%.$(EXTENSION)
	pandoc -s -o $@ $<  #--bibliography=$(BIB)

clean:
	rm -f *.html *.pdf *.tex *.aux *.log *.docx

.PHONY: clean revealjs all pdf html tex docx mdown default re

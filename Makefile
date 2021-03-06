# vim:ts=4 sw=4
# All markdown files in the working directory
SRC = $(wildcard *.md)
PREFIX = $(HOME)/.pandoc
REVEALPREFIX = $(PREFIX)/reveal.js
# REVEALPREFIX = https://revealjs.com/js/reveal.js

ENV = PATH=node_modules/.bin:$(PATH)
NODEFILTERS = mermaid-filter

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
	$(ENV) \
	pandoc -w html -o $@ $< \
		--self-contained \
		-F $(NODEFILTERS) \
		--css=$(PREFIX)/css/pandoc.css
		# --template=$(PREFIX)/templates/html.template
		# --bibliography=$(BIB)

%.tex:	%.$(EXTENSION)
	pandoc -w latex -s -o $@ $< \
		--pdf-engine=pdflatex
		# --template=$(PREFIX)/templates/latex.template
		# --bibliography=$(BIB)

%.rjs.html:	%.$(EXTENSION)
	$(ENV) \
	pandoc -w revealjs -o $@ $< \
		--standalone \
		--slide-level=2 \
		--mathjax \
		-F $(NODEFILTERS) \
		-V revealjs-url=$(REVEALPREFIX)
		# --self-contained
		# --template=$(PREFIX)/templates/revealjs.template

%.pdf:	%.$(EXTENSION)
	pandoc -s \
		--pdf-engine=pdflatex -o $@ $< \
		--bibliography=$(BIB)
		# --template=$(PREFIX)/templates/latex.template

%.docx:	%.$(EXTENSION)
	pandoc -s -o $@ $<  #--bibliography=$(BIB)

clean:
	rm -f *.html *.pdf *.tex *.aux *.log *.docx

.PHONY: clean revealjs all pdf html tex docx mdown default re

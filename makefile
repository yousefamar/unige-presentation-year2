TARGETS = presentation

TEXFILES = $(wildcard *.tex) $(wildcard */*.tex)
PDFS = $(addsuffix .pdf,$(TARGETS))

all: $(PDFS)

%.pdf: %.tex $(TEXFILES)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode -shell-escape" -use-make $*.tex

clean:
	latexmk -CA

.PHONY: all clean

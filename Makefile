PDF=reason-subject
TEX=main.tex

all: $(PDF).pdf

$(PDF).pdf: $(TEX)
	latexmk -pdf -interaction=nonstopmode -shell-escape $(TEX)
	biber main
	latexmk -pdf -interaction=nonstopmode -shell-escape $(TEX)

clean:
	latexmk -C

.PHONY: all clean

.PHONY: main clean FORCE

main: cv_obc.pdf

#%.pdf: FORCE
#	latexmk -f -pdflatex='lualatex -interaction nonstopmode --shell-escape' -pdf $(patsubst %.pdf,%.tex,$@)

latexmk -f

clean:
	latexmk -pdf -c

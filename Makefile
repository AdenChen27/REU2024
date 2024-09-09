.PHONY: clean, view
filename = main


$(filename): $(filename).tex
	mkdir -p aux
	latexmk ./$@ -pdf -jobname=./aux/$(filename)
	mv ./aux/$(filename).pdf ./$(filename).pdf

view: $(filename).pdf
	open $(filename).pdf -a Skim

clean:
	latexmk -c -output-directory=aux


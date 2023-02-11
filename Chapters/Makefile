# LaTeX flags
LATEXFLAGS = -interaction=nonstopmode

# LaTeX sourcecode of slides
SRC = these
FIGDIR = figures
PDFREADER = zathura

clean:		
		rm -f *.aux *.log *.out *.ps *.toc *.nav *.snm *.dvi *.blg *.bbl *.nlo *.mtc* *.brf *.maf *.tdo

#preview:
	#echo -e "awful.tag.viewmore({tags[1][6],awful.tag.selected(1)})" | awesome-client
	#$(PDFREADER) $(SRC).pdf

kad-edonkey:
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	bibtex auxiliary/$@_wrapper
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	mv auxiliary/$@_wrapper.pdf $@.pdf

introduction:
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	bibtex auxiliary/$@_wrapper
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	mv auxiliary/$@_wrapper.pdf $@.pdf

evolution:
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	bibtex auxiliary/$@_wrapper
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	mv auxiliary/$@_wrapper.pdf $@.pdf

requetes:
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	bibtex auxiliary/$@_wrapper
	pdflatex --output-directory=auxiliary $@_wrapper.tex
	mv auxiliary/$@_wrapper.pdf $@.pdf

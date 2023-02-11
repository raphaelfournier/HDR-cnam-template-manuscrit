# LaTeX flags
#LATEXFLAGS = -interaction=nonstopmode
LATEXFLAGS = -shell-escape --output-directory=auxiliary

# LaTeX sourcecode of slides
SRC = hdr
FIGDIR = figures
PDFREADER = zathura

quick:
	pdflatex $(LATEXFLAGS) $(SRC).tex
	mv auxiliary/$(SRC).pdf $(SRC).pdf

clean:		
		rm -f *.log *.out *.ps *.nav *.snm *.dvi *.nlo 
		rm -f auxiliary/*

tidy:		
		rm -f *.aux *.log *.out *.ps *.toc *.nav *.snm *.dvi *.blg *.bbl *.nlo *.mtc* *.brf *.maf *.tdo
		rm -f Chapters/*.aux Appendices/*.aux preamble/*.aux

preview:
	echo -e "awful.tag.viewmore({tags[1][6],awful.tag.selected(1)})" | awesome-client
	$(PDFREADER) $(SRC).pdf

hdr_complete:
	pdflatex $(LATEXFLAGS) $(SRC).tex
	pdflatex $(LATEXFLAGS) $(SRC).tex
	#bibtex auxiliary/$(SRC)
	biber auxiliary/$(SRC)
	pdflatex $(LATEXFLAGS) $(SRC).tex
	pdflatex $(LATEXFLAGS) $(SRC).tex
	mv auxiliary/$(SRC).pdf $(SRC).pdf

#figures:
#	load_makefile ../Calculs/Makefile 
#
figures:
	make -C $(FIGDIR) figures

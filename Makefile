PROJECT=main

pdf:
	latexmk -pdf ${PROJECT}.tex

clean:
	latexmk -C
	rm -fvr *.bbl *.brf *.synctex.gz *.backup *.maf *.mtc* *.aux *.blg
	find . -type f -name '*.*~' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.bakcup' -delete

compress: fast
	./shrinkpdf.sh ${PROJECT}.pdf ${PROJECT}_compressed.pdf 300
	ls ${PROJECT}*.pdf -hl

fast:
	pdflatex -draftmode -interaction=nonstopmode ${PROJECT}.tex
	bibtex ${PROJECT} # or biber
	pdflatex -draftmode -interaction=nonstopmode ${PROJECT}
	pdflatex -synctex=1 -interaction=nonstopmode ${PROJECT}

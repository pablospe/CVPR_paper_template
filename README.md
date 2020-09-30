## Paper template

The main file is: `main.tex`

Useful commands in `Makefile`:

    > make
    > make fast       (draft)
    > make clean
    > make compress   (uses 'shrinkpdf.sh' script)


File structure

    .
    ├── ...
    ├── main.tex                  <--  MAIN file
    ├── Makefile
    ├── shrinkpdf.sh
    ├── ...
    ├── bib
    │   ├── abbreviation_short.bib
    │   ├── bibliography.bib
    │   ├── bibliography.tex
    │   ├── clean_sort_fix_bibliography.sh
    │   ├── keep_bibtex.rsc
    │   └── README.txt
    └── tex
        ├── abstract.tex
        ├── bibliography.tex
        ├── conclusion.tex
        ├── experiments.tex
        ├── future_work.tex
        ├── hyperref.tex
        ├── introduction.tex
        ├── method.tex
        ├── related_work.tex
        └── title.tex

The bibliography is in a separated folder because it there is a script to help to keep the file clean and sorted. See `bib/README.txt` for more details.

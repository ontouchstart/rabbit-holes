all:
	pdflatex main.tex

Makefile.tex: ../Makefile
	echo '\\begin{verbatim}' > Makefile.tex
	cat -n ../Makefile >> Makefile.tex
	echo '\\end{verbatim}' >> Makefile.tex

generators/Makefile.tex: ../generators/Makefile
	make -C generators

generators/UNIX/Makefile.tex: ../generators/UNIX/Makefile
	make -C generators/UNIX

all:
	rustdoc llm-rabbit-hole-dek.rs -o ../../docs
	cc claude-cycles.c -o claude-cycles && ./claude-cycles > claude-cycles-output.tex
	echo '\\begin{verbatim}' > code.tex
	cat -n claude-cycles.c >> code.tex
	echo '\\end{verbatim}' >> code.tex
	pdflatex claude-cycles-correction.tex
	cp claude-cycles-correction.pdf ../../docs/llm_rabbit_hole_dek

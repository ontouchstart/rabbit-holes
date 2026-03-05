all:
	rustdoc llm-rabbit-hole-dek.rs -o ../../docs
	cp screenshot.png ../../docs/llm_rabbit_hole_dek
	cc claude-cycles.c -o claude-cycles && ./claude-cycles > claude-cycles-output.tex
	echo '\\begin{verbatim}' > code.tex
	cat -n claude-cycles.c >> code.tex
	echo '\\end{verbatim}' >> code.tex
	pdflatex claude-cycles-correction.tex

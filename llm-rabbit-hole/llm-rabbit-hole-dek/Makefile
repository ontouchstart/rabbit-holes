all:
	rustdoc llm-rabbit-hole-dek.rs -o ../../docs
	cc claude-cycles.c -o claude-cycles && ./claude-cycles > claude-cycles-output.tex
	echo '\\begin{verbatim}' > code.tex
	cat -n claude-cycles.c >> code.tex
	echo '\\end{verbatim}' >> code.tex
	pdflatex claude-cycles-correction.tex
	cp claude-cycles-correction.pdf ../../docs/llm_rabbit_hole_dek

note-on-claude-cycles.pdf:
	echo '\\begin{verbatim}' > note-on-claude-cycles-code.tex
	cat -n note-on-claude-cycles.c >> note-on-claude-cycles-code.tex
	echo '\\end{verbatim}' >> note-on-claude-cycles-code.tex
	cc note-on-claude-cycles.c && ./a.out > note-on-claude-cycles-output.tex
	pdflatex note-on-claude-cycles.tex
	cp note-on-claude-cycles.pdf ../../docs/llm_rabbit_hole_dek

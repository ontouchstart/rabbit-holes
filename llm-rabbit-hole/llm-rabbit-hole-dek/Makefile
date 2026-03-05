all:	claude-cycles-correction.pdf note-on-claude-cycles.pdf
	rustdoc llm-rabbit-hole-dek.rs -o ../../docs
	cp claude-cycles.pdf ../../docs/llm_rabbit_hole_dek

claude-cycles-correction.pdf: claude-cycles-correction.tex
	cc claude-cycles-correction.c && ./a.out > claude-cycles-correction-output.tex
	echo '\\begin{verbatim}' > claude-cycles-correction-code.tex
	cat -n claude-cycles.c >> claude-cycles-correction-code.tex
	echo '\\end{verbatim}' >> claude-cycles-correction-code.tex
	pdflatex claude-cycles-correction.tex
	cp claude-cycles-correction.pdf ../../docs/llm_rabbit_hole_dek

note-on-claude-cycles.pdf: note-on-claude-cycles.tex
	echo '\\begin{verbatim}' > note-on-claude-cycles-code.tex
	cat -n note-on-claude-cycles.c >> note-on-claude-cycles-code.tex
	echo '\\end{verbatim}' >> note-on-claude-cycles-code.tex
	cc note-on-claude-cycles.c && ./a.out > note-on-claude-cycles-output.tex
	pdflatex note-on-claude-cycles.tex
	cp note-on-claude-cycles.pdf ../../docs/llm_rabbit_hole_dek

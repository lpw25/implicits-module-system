
OTTFLAGS=-tex_show_meta false -signal_parse_errors true

all : implicits.pdf

implicits.tex : implicits.ott
	ott ${OTTFLAGS} -i implicits.ott -o implicits.tex

implicits.pdf : implicits.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make implicits.tex

clean:
	latexmk -CA
	rm implicits.tex

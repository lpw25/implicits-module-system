
OTTFLAGS=-tex_show_meta false -signal_parse_errors true -tex_wrap false

all : implicits.pdf

implicits-gen.tex : implicits.ott
	ott ${OTTFLAGS} -i implicits.ott -o implicits-gen.tex

implicits.pdf : implicits.tex implicits-gen.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make implicits.tex

clean:
	latexmk -CA
	rm implicits-gen.tex

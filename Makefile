compiler = pdflatex

default: all
all:
	$(compiler) Boyou_Zhou_CV.tex
evince:
	evince Boyou_Zhou_CV.pdf &

clean:
	rm -rf *.aux *.log *.pdf

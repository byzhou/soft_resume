compiler = pdflatex

flags = -shell-escape
build = build
UNAME_S 	:= $(shell uname -s )

ifeq ($(UNAME_S),Darwin)
	target 	:= mac_view
else
	target 	:= linux_view
endif


default: all
all:
	$(compiler) Boyou_Zhou_CV.tex

view: $(target)

mac_view: 
	open -a Preview Boyou_Zhou_CV.pdf &
linux_view:
	@if which mupdf > /dev/null; then\
		mupdf Boyou_Zhou_CV.pdf &\
	else\
		evince Boyou_Zhou_CV.pdf &\
	fi
evince:
	evince build/Boyou_Zhou_CV.pdf &

preview:
	open -a Preview Boyou_Zhou_CV.pdf &

clean:
	rm -rf *.aux *.log *.pdf

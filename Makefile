.PHONY: examples

CC = xelatex
EXAMPLES_DIR = examples
RESUME_DIR = examples/resume
CV_DIR = cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) cv.tex

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf

build:
	docker run -v `pwd`:/workdir --rm texlive/texlive:latest make

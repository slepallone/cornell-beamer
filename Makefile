OUTDIR = build

all: $(OUTDIR)/minimal.pdf $(OUTDIR)/exampletalk.pdf
	-

$(OUTDIR):
	mkdir -p $(OUTDIR)

build/minimal.pdf: beamerthemeCornell.sty title_bg.pdf minimal.tex | $(OUTDIR)
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR) minimal.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR) minimal.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR) minimal.tex

build/exampletalk.pdf: beamerthemeCornell.sty title_bg.pdf exampletalk.tex | $(OUTDIR)
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR) exampletalk.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR) exampletalk.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR) exampletalk.tex

.PHONY: clean
clean:
	-@rm $(OUTDIR)/minimal.aux 2> /dev/null || true
	-@rm $(OUTDIR)/minimal.log 2> /dev/null || true
	-@rm $(OUTDIR)/minimal.nav 2> /dev/null || true
	-@rm $(OUTDIR)/minimal.out 2> /dev/null || true
	-@rm $(OUTDIR)/minimal.snm 2> /dev/null || true
	-@rm $(OUTDIR)/minimal.pdf 2> /dev/null || true
	-@rm $(OUTDIR)/minimal.toc 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk.aux 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk.log 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk.nav 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk.out 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk.snm 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk.pdf 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk.toc 2> /dev/null || true


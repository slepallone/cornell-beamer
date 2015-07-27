OUTDIR = build

all: $(OUTDIR)/minimal.pdf $(OUTDIR)/exampletalk.pdf
	-

$(OUTDIR)/minimal:
	mkdir -p $@

$(OUTDIR)/exampletalk:
	mkdir -p $@

build/minimal.pdf: beamerthemeCornell.sty title_bg.pdf minimal/minimal.tex | $(OUTDIR)/minimal
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR)/minimal minimal/minimal.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR)/minimal minimal/minimal.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR)/minimal minimal/minimal.tex

build/exampletalk.pdf: beamerthemeCornell.sty title_bg.pdf exampletalk/exampletalk.tex | $(OUTDIR)/exampletalk
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR)/exampletalk exampletalk/exampletalk.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR)/exampletalk exampletalk/exampletalk.tex
	pdflatex -interaction nonstopmode -output-directory $(OUTDIR)/exampletalk exampletalk/exampletalk.tex

.PHONY: clean
clean:
	-@rm $(OUTDIR)/minimal/minimal.aux 2> /dev/null || true
	-@rm $(OUTDIR)/minimal/minimal.log 2> /dev/null || true
	-@rm $(OUTDIR)/minimal/minimal.nav 2> /dev/null || true
	-@rm $(OUTDIR)/minimal/minimal.out 2> /dev/null || true
	-@rm $(OUTDIR)/minimal/minimal.snm 2> /dev/null || true
	-@rm $(OUTDIR)/minimal/minimal.pdf 2> /dev/null || true
	-@rm $(OUTDIR)/minimal/minimal.toc 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk/exampletalk.aux 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk/exampletalk.log 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk/exampletalk.nav 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk/exampletalk.out 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk/exampletalk.snm 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk/exampletalk.pdf 2> /dev/null || true
	-@rm $(OUTDIR)/exampletalk/exampletalk.toc 2> /dev/null || true


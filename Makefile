MAIN = main
# 使用西南大学模板
SWU_MAIN = swuthesis
SWU_CLSFILES = swuthesis/swuthesis.cls
SWU_BSTFILES = swuthesis/vendor/swuthesis-*.bst

SHELL = bash
LATEXMK = latexmk -xelatex
TEXMF = $(shell kpsewhich --var-value TEXMFHOME)

.PHONY : main swu clean cleanall FORCE_MAKE

# 默认编译西南大学模板
main : $(MAIN).pdf

# 编译西南大学论文
$(MAIN).pdf : $(MAIN).tex $(SWU_CLSFILES) $(SWU_BSTFILES) FORCE_MAKE
	$(LATEXMK) $<

# 编译西南大学模板文档
swudoc : swuthesis/swuthesis-doc.pdf

swuthesis/swuthesis-doc.pdf : swuthesis/swuthesis-doc.tex FORCE_MAKE
	cd swuthesis && $(LATEXMK) swuthesis-doc.tex

clean : FORCE_MAKE
	$(LATEXMK) -c $(MAIN).tex

cleanall : FORCE_MAKE
	$(LATEXMK) -C $(MAIN).tex
	$(LATEXMK) -C swuthesis/swuthesis-doc.tex

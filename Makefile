MAIN = main
# 使用西南大学模板
SWU_MAIN = swuthesis
SWU_CLSFILES = swuthesis/swuthesis.cls
SWU_BSTFILES = swuthesis/vendor/swuthesis-*.bst

SHELL = bash
LATEXMK = latexmk -xelatex
TEXMF = $(shell kpsewhich --var-value TEXMFHOME)

.PHONY : main swu clean cleanall version FORCE_MAKE

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

# 获取版本号（从 swuthesis.cls 或 git tag）
# 优先级：1. swuthesis.cls 中的版本号 2. 最新的 git tag 3. "dev"
VERSION = $(shell grep -o 'swuthesisversion{[^}]*' swuthesis/swuthesis.cls | sed 's/swuthesisversion{//' | head -1 || git describe --tags --always --dirty 2>/dev/null | sed 's/^v//' || echo "dev")

# 显示当前版本号
version:
	@echo "当前版本号: $(VERSION)"
	@echo "来源: $$(if grep -q 'swuthesisversion{' swuthesis/swuthesis.cls 2>/dev/null; then echo 'swuthesis.cls'; elif git describe --tags --exact-match HEAD 2>/dev/null; then echo 'git tag'; else echo '默认 (dev)'; fi)"

# 生成发布用的 zip 文件
zip : clean
	@echo "创建发布包 swuthesis-v$(VERSION).zip..."
	@rm -rf swuthesis-release
	@mkdir -p swuthesis-release
	@cp -r swuthesis/* swuthesis-release/ 2>/dev/null || true
	@cp README-SWU.md swuthesis-release/README.md
	@cp LICENSE swuthesis-release/ 2>/dev/null || true
	@find swuthesis-release -name ".DS_Store" -delete
	@find swuthesis-release -name "*.pdf" -path "*/test*" -delete
	@cd swuthesis-release && zip -r ../swuthesis-v$(VERSION).zip . -x "*.DS_Store" "test/**/*"
	@rm -rf swuthesis-release
	@echo "发布包已生成: swuthesis-v$(VERSION).zip"

# 完整发布流程：编译文档并生成 zip
release : swudoc zip
	@echo "发布包已准备完成！"
	@echo "1. 上传 swuthesis-v$(VERSION).zip 到 GitHub Releases"
	@echo "2. 标签: v$(VERSION)"
